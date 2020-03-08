package command.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class UpdateM implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tag = request.getParameter("tag");
		MemberDao dao = new MemberDao();
		String id = request.getParameter("config");
		MemberDto dto = dao.select(id);
		request.setAttribute("dto", dto);
		return "HTML/nsh/updateM.jsp";
	}

}
