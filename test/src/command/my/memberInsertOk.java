package command.my;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;

public class memberInsertOk implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID");
		String userPassword1 = request.getParameter("userPassword1");
		String userPassword2 = request.getParameter("userPassword2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pnum = request.getParameter("pnum");
		Integer zip = Integer.parseInt(request.getParameter("zip"));
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");

		/*
		 * SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd"); try {
		 * dto.setM_birth(transFormat.parse(from)); } catch (ParseException e) { // TODO
		 * Auto-generated catch block e.printStackTrace(); }
		 */

		// 빈칸이 하나라도 있으면 안됨
		if (userID == null || userID.equals("") || userPassword1 == null || userPassword1.equals("")
				|| userPassword2 == null || userPassword2.equals("") || name == null || name.equals("") || email == null
				|| email.equals("") || pnum == null || pnum.equals("") || zip == null || zip.equals("") || addr1 == null
				|| addr1.equals("") || addr2 == null || addr2.equals("") || birth == null || birth.equals("")
				|| gender == null || gender.equals("")) {
			// session을 가져와서 속성을 설정함 (신기)
			// 요청하는 것 -> index.jsp에서 일어날 일
			// reponse받아오는 것-> 실행후 해야할 일
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "fill in the all blanks");
			response.sendRedirect("index.jsp");
			return null;
		}
		if (!userPassword1.equals(userPassword2)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "two password are not equal");
			response.sendRedirect("index.jsp");
			return null;
		}

		// register함수가 여기서 쓰임
		// UserDAO() //생성자 .register (그 class안에서register함수를 실행)
		int result = new MemberDao().insert(userID, userPassword1, name, email, pnum, addr1, zip, addr1, birth, gender);
		System.out.println(result);
		if (result == 1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "Successfully Signing Up");
			response.sendRedirect("index.jsp");
			return null;
		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "Failed to Sign Up");
			response.sendRedirect("index.jsp");
			return null;
		}

	}

}
