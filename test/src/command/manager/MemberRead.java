package command.manager;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class MemberRead implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();
		String id = request.getParameter("id");
		dto = dao.select(id);
		
		request.setAttribute("dto", dto);
		
		
		return "HTML/kjw/MemberRead.jsp";
	}

}
