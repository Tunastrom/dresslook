package command.my;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class MyInfoCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		MemberDao dao = new MemberDao();
		String id =(String) request.getSession().getAttribute("id");
		MemberDto dto = dao.select(id);
		
		request.setAttribute("dto", dto);
		return "HTML/lsj/myInfo.jsp";
	}

}
