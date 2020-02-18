package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.MemberList;
import command.MemberMain;
import command.Mgoods;
import command.collection.CollectionMain;
import command.collection.Product;
import command.collection.LookSelect;
import command.collection.Payment;
import command.collection.Thankyou;
import command.collection.orderSheet;
import command.dresslook.BoardLook;

import command.dresslook.DressroomitemInfoCommand;

import command.dresslook.Checkout;
import command.dresslook.Like;
import command.dresslook.LookContents;
import command.dresslook.LookInsert;
import command.dresslook.Notifications;
import command.dresslook.Search;
import command.dresslook.SearchResult;
import command.dresslook.Timeline;
import command.dresslook.dressroom;
import command.dresslook.imageGet;
import command.my.IdSearchCommand;
import command.my.LoginCommand;
import command.my.LoginOkCommand;
import command.my.MemberIdCheckAction;
import command.my.MemberInsert;
import command.my.MyCouponCommand;
import command.my.MyInfoCommand;
import command.my.MyOrderListCommand;
import command.my.MyOrderSelectCommand;
import command.my.MyOrderTrackCommand;
import command.my.MyProfileCommand;
import command.my.PwSearchCommand;
import command.my.memberInsertOk;
import command.my.memberSelect;
import command.my.registerCheck;
import command.seller.GoodsList;
import command.seller.InsertGoods;


import command.seller.InsertGoodsOk;
import command.seller.SLoginCommand;
import command.seller.SLoginOkCommand;
import command.seller.goodsInsert;
import command.seller.sellerInsert;

@WebServlet("*.do")
public class test_Con extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<>();

	public test_Con() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// dresslook
		cont.put("/timeline.do", new Timeline());
		cont.put("/like.do", new Like());
		cont.put("/search.do", new Search());
		cont.put("/searchResult.do", new SearchResult());
		cont.put("/dressRoom.do", new dressroom());
		cont.put("/ajax/imageGet.do", new imageGet());
		cont.put("/notifications.do", new Notifications());
		/* cont.put("/lookInertForm.do", new LookInsertForm()); */
		cont.put("/lookInsert.do", new LookInsert());
		

		cont.put("boardLook.do", new BoardLook());
		cont.put("/lookContents.do", new LookContents());

		cont.put("/boardLook.do", new BoardLook());

		cont.put("/memberlist.do", new MemberList());
		cont.put("/membermain.do", new MemberMain());
		cont.put("/mgoods.do", new Mgoods());

		cont.put("/collectionMain.do", new CollectionMain());
		cont.put("/lookSelect.do", new LookSelect());
		cont.put("/product.do", new Product());
		cont.put("/orderSheet.do", new orderSheet());
		cont.put("/payment.do", new Payment());
		cont.put("/checkout.do", new Checkout());
		cont.put("/thankyou.do", new Thankyou());
		cont.put("/loginCommand.do", new LoginCommand());
		cont.put("/memberSelect.do", new memberSelect());
		cont.put("/memberInsert.do", new MemberInsert());
		cont.put("/memberInsertOk.do", new memberInsertOk());
		cont.put("/ajax/registerCheck.do", new registerCheck());
		cont.put("/IdCheckAction.do", new MemberIdCheckAction());

		// my
		cont.put("/login.do", new LoginCommand());
		cont.put("/loginOk.do", new LoginOkCommand());
		cont.put("/Slogin.do", new SLoginCommand());
		cont.put("/SloginOk.do", new SLoginOkCommand());
		cont.put("/myOrderList.do", new MyOrderListCommand());
		cont.put("/myOrderSelect.do", new MyOrderSelectCommand());
		cont.put("/myOrderTrack.do", new MyOrderTrackCommand());
		cont.put("/myProfile.do", new MyProfileCommand());
		cont.put("/myInfo.do", new MyInfoCommand());
		cont.put("/memberIdSearch.do", new IdSearchCommand());
		cont.put("/memberPwSearch.do", new PwSearchCommand());
		cont.put("/myCoupon.do", new MyCouponCommand());
		// manager

		// seller
		cont.put("/sellerInsert.do", new sellerInsert());
		cont.put("/GoodsList.do", new GoodsList());
		cont.put("/goodsInsert.do", new goodsInsert());
		cont.put("/InsertGoodsOk.do", new InsertGoodsOk());
		cont.put("/mgoods.do", new Mgoods());
		cont.put("/insertGoods.do", new InsertGoods()); //상품 샘플 입력

		
		cont.put("/dressroomitemInfo.do", new DressroomitemInfoCommand());
		


	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 Class객체를 찾아주는 부분
		// hashMap의 키값인 문자열 ".xxxxx"를 만드는 과정
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("path=" + path);
		// 권한체크(로그인 체크)

		Command commandImpl = cont.get(path);
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		if (commandImpl != null) {
			page = commandImpl.execute(request, response);
			System.out.println(page);
			if (page != null & !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
					System.out.println(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}

		} else {
			response.getWriter().append("잘못된 요청");
		}
	}
}
