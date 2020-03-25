package controller;

import java.io.IOException;
import java.text.ParseException;
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
import command.Memberupdate;
import command.Mgoods;
import command.crawling;
import command.deleteMember;
import command.collection.CollectionMainCommand;
import command.collection.LookSelect;
import command.collection.Payment;
import command.collection.Product;
import command.collection.Thankyou;
import command.collection.OrderSheetCommand;
import command.dresslook.Checkout;
import command.dresslook.DressroomitemInfoCommand;
import command.dresslook.GoodsImageListCommand;
import command.dresslook.GoodsListCommand;
import command.dresslook.Like;
import command.dresslook.LookContents;
import command.dresslook.LookListCommand;
import command.dresslook.CollectionInsertCommand;
import command.dresslook.Notifications;
import command.dresslook.OrderInsertCommand;
import command.dresslook.SearchCommand;
import command.dresslook.SearchResult;
import command.dresslook.ShareInsertCommand;
import command.dresslook.TimelineCommand;
import command.dresslook.TimelineWriteCommand;
import command.dresslook.DressRoomCommand;
import command.dresslook.imageGet;
import command.manager.UpdateM;
import command.manager.loginSelect;
import command.my.IdSearchCommand;
import command.my.LoginCommand;
import command.my.LoginOkCommand;
import command.my.MemberIdCheckAction;
import command.my.MemberInsert;
import command.my.MemberupdateCk;
import command.my.MyCouponCommand;
import command.my.MyInfoCommand;
import command.my.MyOrderListCommand;
import command.my.MyOrderSelectCommand;
import command.my.MyProfileCommand;
import command.my.PwSearchCommand;
import command.my.memberInsertOk1;
import command.my.memberInsterOk;
import command.my.memberSelect;
import command.my.registerCheck;
import command.seller.InsertGoods;
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
		cont.put("/timelineCommand.do", new TimelineCommand());
		cont.put("/like.do", new Like());
		cont.put("/searchCommand.do", new SearchCommand());
		cont.put("/searchResult.do", new SearchResult());
		cont.put("/dressRoomCommand.do", new DressRoomCommand());
		cont.put("/ajax/goodsListCommand.do", new GoodsListCommand());
		cont.put("/ajax/goodsImageListCommand.do", new GoodsImageListCommand());
		cont.put("/ajax/imageGet.do", new imageGet());
		cont.put("/notifications.do", new Notifications());

		/* cont.put("/lookInertForm.do", new LookInsertForm()); */
		cont.put("/collectionInsertCommand.do", new CollectionInsertCommand());
		cont.put("/orderInsertCommand.do", new OrderInsertCommand());
		cont.put("/shareInsertCommand.do", new ShareInsertCommand());
		cont.put("/ajax/lookListCommand.do", new LookListCommand());
		cont.put("/TimelineWriteCommand.do", new TimelineWriteCommand());
		cont.put("/lookContents.do", new LookContents());

		cont.put("/memberlist.do", new MemberList());//회원목록 - id 클릭시 휴먼계정으로 변경
		cont.put("/membermain.do", new MemberMain());
		cont.put("/mgoods.do", new Mgoods());
		cont.put("/memberdelete.do", new deleteMember());
		cont.put("/memberupdate.do",new Memberupdate());//회원정보 수정
		cont.put("/updatem.do", new UpdateM());
		cont.put("/collectionMainCommand.do", new CollectionMainCommand());
		cont.put("/lookSelect.do", new LookSelect());
		cont.put("/product.do", new Product());
		cont.put("/orderSheetCommand.do", new OrderSheetCommand());
		cont.put("/payment.do", new Payment());
		cont.put("/checkout.do", new Checkout());
		cont.put("/thankyou.do", new Thankyou());
		cont.put("/loginCommand.do", new LoginCommand());
		cont.put("/memberSelect.do", new memberSelect());
		cont.put("/memberInsert.do", new MemberInsert());
		cont.put("/memberInsertOk.do", new memberInsterOk());
		cont.put("/ajax/registerCheck.do", new registerCheck());
		cont.put("/IdCheckAction.do", new MemberIdCheckAction());
		cont.put("/loginSelect.do", new loginSelect());

		// my
		cont.put("/login.do", new LoginCommand());
		cont.put("/loginOk.do", new LoginOkCommand());
		cont.put("/Slogin.do", new SLoginCommand());
		cont.put("/SloginOk.do", new SLoginOkCommand());
		cont.put("/myOrderList.do", new MyOrderListCommand());
		cont.put("/myOrderSelect.do", new MyOrderSelectCommand());
		//cont.put("/myOrderTrack.do", new MyOrderTrackCommand());
		cont.put("/myProfile.do", new MyProfileCommand());
		cont.put("/myInfo.do", new MyInfoCommand());
		cont.put("/memberIdSearch.do", new IdSearchCommand());
		cont.put("/memberPwSearch.do", new PwSearchCommand());
		cont.put("/myCoupon.do", new MyCouponCommand());
		
		
		// manager

		// seller
		cont.put("/sellerInsert.do", new sellerInsert());
		/* cont.put("/GoodsList.do", new GoodsList()); */
		cont.put("/goodsInsert.do", new goodsInsert());
		/* cont.put("/InsertGoodsOk.do", new InsertGoodsOk()); */
		cont.put("/mgoods.do", new Mgoods());

		cont.put("/insertGoods.do", new InsertGoods()); //상품 샘플 입력
		cont.put("/dressroomitemInfo.do", new DressroomitemInfoCommand());
		
		//crawling
		cont.put("/track.do", new crawling());//주문목록에서 배송조회 버튼이랑 연결해야됨
		cont.put("/memberupdateCk.do", new MemberupdateCk());
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
			try {
				page = commandImpl.execute(request, response);
			} catch (ServletException | IOException | ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(page);
			if (page != null & !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					/* response.sendRedirect(view); */
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
					/* System.out.println(page.substring(5)); */
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
