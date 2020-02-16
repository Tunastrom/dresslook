package command.my;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;

public class MemberIdCheckAction implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		MemberDao dao = new MemberDao();

		boolean result = dao.duplicateIdCheck(id);
		System.out.println(result);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (result)
			out.println("0"); // 아이디중복
		else
			out.println("1");
		out.close();

		return null;
	}

}
