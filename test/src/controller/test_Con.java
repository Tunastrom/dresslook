package controller;

import java.io.IOException;
import java.util.HashMap;

<<<<<<< HEAD
=======
import javax.servlet.Servlet;
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
<<<<<<< HEAD
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import command.Command;
import command.MemberList;
import command.MemberMain;
import command.Mgoods;
import command.Timeline;
=======
=======
import javax.servlet.http.HttpServletResponse;
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
import dresslook.dresslook;
import dresslook.imageGet;
<<<<<<< HEAD
=======
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
import command.Command;
<<<<<<< HEAD
import command.collection.CollectionMain;
import command.collection.CollectionProduct;
import command.collection.CollectionSelect;
import command.collection.Payment;
import command.collection.Thankyou;
import command.collection.orderSheet;
import command.dresslook.Like;
import command.dresslook.Search;
import command.dresslook.Timeline;
import command.dresslook.dressroom;
import command.dresslook.imageGet;
=======
import command.InsertGoods;
import command.Timeline;
import command.orderSheet;
import command.Like;
import command.Payment;
import command.CollectionMain;
import command.CollectionProduct;
import command.CollectionSelect;

import command.IndexCommand;

import command.LoginCommand;
import command.LoginOkCommand;

import command.SLoginCommand;
import command.SLoginOkCommand;
import command.Search;
import command.Thankyou;
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git

>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git



@WebServlet("*.do")
public class test_Con extends HttpServlet {
	private static final long serialVersionUID = 1L;
       HashMap<String, Command> cont = new HashMap<>(); 

       public test_Con() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		cont.put("/timeline.do", new Timeline());
		cont.put("/like.do", new Like());
		cont.put("/search.do", new Search());
		cont.put("/dresslook.do", new dressroom());
		cont.put("/ajax/imageGet.do", new imageGet());
<<<<<<< HEAD
		cont.put("/memberlist.do", new MemberList());
		cont.put("/membermain.do", new MemberMain());
		cont.put("/mgoods.do", new Mgoods());
=======
		cont.put("/collectionMain.do", new CollectionMain());
		cont.put("/collectionSelect.do", new CollectionSelect());
		cont.put("/collectionProduct.do", new CollectionProduct());
		cont.put("/orderSheet.do", new orderSheet());
		cont.put("/payment.do", new Payment());
		cont.put("/thankyou.do", new Thankyou());
		cont.put("/insertGoods.do", new InsertGoods());
		
		
		
		cont.put("/index.do", new IndexCommand());
		cont.put("/login.do", new LoginCommand());
		cont.put("/loginOk.do", new LoginOkCommand());
		cont.put("/Slogin.do", new SLoginCommand());
		cont.put("/SloginOk.do", new SLoginOkCommand());
	
		
			
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//실행할 Class객체를 찾아주는 부분
		//hashMap의 키값인 문자열 ".xxxxx"를 만드는 과정
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		//로그처리
		System.out.println("path="+path);
		//권한체크(로그인 체크)
		
		
		Command commandImpl = cont.get(path);
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		if(commandImpl != null) {
			page = commandImpl.execute(request, response);
			System.out.println(page);
			if (page != null & !page.isEmpty()) {
				if (page.startsWith("redirect:")){
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")){
					response.getWriter().append(page.substring(5));
					System.out.println(page.substring(5));
				} else if (page.startsWith("script:")){
					response.getWriter().append("<script>")
                    .append(page.substring(7))
                    .append("</script>");
				} else {
					request.getRequestDispatcher(page)
					.forward(request, response); 
				}
			}
		} else {
			response.getWriter().append("잘못된 요청");
		}
	} 
}
