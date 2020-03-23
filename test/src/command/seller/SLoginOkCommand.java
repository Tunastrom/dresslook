package command.seller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dao.SellerDao;

public class SLoginOkCommand implements command.Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		// 로그인 화면에 입력된 아이디와 비밀번호를 가져온다

		MemberDao dao = new MemberDao();
		String sid = request.getParameter("sid");
		String spw = request.getParameter("spwd");
		String au = dao.loginCheck(sid, spw);

		if (au == null) {
			return "Slogin.do";
		} else {
			HttpSession httpsession = request.getSession();// 자바 객체를 이용해서 session 객체(servlet session 객체)를 이용할때
			httpsession.setAttribute("sid", sid);
			httpsession.setAttribute("au", au);// 브라우저 종료시까지 유지. 세션

			return "timeline.do";
		}

	}
}
