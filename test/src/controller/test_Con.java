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
import command.collection.CollectionProduct;
import command.collection.CollectionSelect;
import command.collection.Payment;
import command.collection.Thankyou;
import command.collection.TimelineSearch;
import command.collection.orderSheet;
import command.dresslook.BoardLook;
import command.dresslook.Like;
import command.dresslook.LookInsert;
import command.dresslook.Notifications;
import command.dresslook.Search;
import command.dresslook.Timeline;
import command.dresslook.dressroom;
import command.my.LoginCommand;
import command.my.MemberInsert;
import command.my.memberSelect;
import command.dresslook.imageGet;
import command.my.LoginOkCommand;
import command.seller.SLoginCommand;
import command.seller.SLoginOkCommand;
import command.InsertGoods;

@WebServlet("*.do")
public class test_Con extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<>();

	public test_Con() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		//dresslook
		cont.put("/timeline.do", new Timeline());
		cont.put("/like.do", new Like());
		cont.put("/search.do", new Search());
		cont.put("/dressRoom.do", new dressroom());
		cont.put("/ajax/imageGet.do", new imageGet());
		cont.put("/timelineSearch.do", new TimelineSearch());
		cont.put("/notifications.do", new Notifications());
		cont.put("/lookInsert.do", new LookInsert());
		cont.put("/boardLook.do", new BoardLook());
		
		
		cont.put("/memberlist.do", new MemberList());
		cont.put("/membermain.do", new MemberMain());
		cont.put("/mgoods.do", new Mgoods());

		cont.put("/collectionMain.do", new CollectionMain());
		cont.put("/collectionSelect.do", new CollectionSelect());
		cont.put("/collectionProduct.do", new CollectionProduct());
		cont.put("/orderSheet.do", new orderSheet());
		cont.put("/payment.do", new Payment());
		cont.put("/thankyou.do", new Thankyou());
		cont.put("/insertGoods.do", new InsertGoods());
		cont.put("/loginCommand.do", new LoginCommand());
		cont.put("/memberSelect.do", new memberSelect());
		cont.put("/memberInsert.do", new MemberInsert());
		cont.put("/insertGoods.do", new InsertGoods());
		//my
		cont.put("/login.do", new LoginCommand());
		cont.put("/loginOk.do", new LoginOkCommand());
		cont.put("/Slogin.do", new SLoginCommand());
		cont.put("/SloginOk.do", new SLoginOkCommand());
		//manager
		//
		cont.put("/memberlist.do", new MemberList());
		cont.put("/membermain.do", new MemberMain());
		cont.put("/mgoods.do", new Mgoods());


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
