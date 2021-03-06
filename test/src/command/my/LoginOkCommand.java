package command.my;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.MemberDto;

public class LoginOkCommand implements command.Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 로그인 화면에 입력된 아이디와 비밀번호를 가져온다

		MemberDao dao = new MemberDao();
		String id = request.getParameter("id");
		String pw = request.getParameter("pwd");
		String au = dao.loginCheck(id, pw);
		dao = new MemberDao();
		MemberDto dto = dao.select(id);
		String sex = dto.getM_sex();
		
		
		System.out.println(dto);
		
		if (au == null) {
			return "login.do";
		} else {
			HttpSession httpsession = request.getSession();// 자바 객체를 이용해서 session 객체(servlet session 객체)를 이용할때
			httpsession.setAttribute("id", id);
			httpsession.setAttribute("au", au);// 브라우저 종료시까지 유지. 세션
			httpsession.setAttribute("sex", sex);
		
			System.out.println(au);
			System.out.println(sex); 

			return "timelineCommand.do";
		}

	}

}
