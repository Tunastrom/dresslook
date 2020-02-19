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
		MemberDao dao=new MemberDao();
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		list=dao.select();
		request.setAttribute("list", list);
		return "HTML/lsj/myInfo.jsp";
	}

}
