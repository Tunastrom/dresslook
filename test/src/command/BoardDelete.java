package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.MemberDto;

public class BoardDelete implements Command {

	@Override
	public int execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		MemberDao dao = new MemberDao();
		
		int id = Integer.parseInt(request.getParameter("id"));
		int n = dao.delete(id);
		String path;
		if( n == 0) {
			path = "view/boardinsertfail.jsp";
		}else {
			path = "boardList.do";
		}
		
		response.sendRedirect(path); //request 객체를 전달 할 필요가 없을 때 
	}

}
