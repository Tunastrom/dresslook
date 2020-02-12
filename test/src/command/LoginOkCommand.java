package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;

public class LoginOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String au = dao.loginCheck(id, pw);

		if (au == null) {
			return "login.do";
		} else {

			HttpSession httpsession = request.getSession();// 자바 객체를 이용해서 session 객체(servlet session 객체)를 이용할때
			httpsession.setAttribute("id", id);
			httpsession.setAttribute("au", au);// 브라우저 종료시까지 유지. 세션

			return "index.do";
		}

	}

}
