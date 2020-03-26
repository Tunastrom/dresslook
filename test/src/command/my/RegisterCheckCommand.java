package command.my;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;

public class RegisterCheckCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		// userID의 parameter를 가져오고
		String userID = request.getParameter("userID");
		System.out.println(userID);
		// getWirter로 registerCheck를 한 후의 값을 받아옴 -> function(result)이렇게 되어있으니까 자동으로 결과값이
		// result에 저장
		// registerCheck이 int형을 반환 -> ""공백을 넣어줌으로써 성공적으로 문자열 형태로 text가 출력
		return "ajax:"+(new MemberDao().registerCheck(userID) + "");
	}

}
