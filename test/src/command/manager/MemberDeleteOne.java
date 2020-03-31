package command.manager;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class MemberDeleteOne implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();
		dto.setM_id(request.getParameter("del"));
		
		int pass = dao.delM(dto);
		request.setAttribute("pass", pass);
		
		return "HTML/kjw/MemberDelete.jsp";
	}

}
