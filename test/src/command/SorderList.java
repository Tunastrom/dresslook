package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.MemberDto;



public class SorderList implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//dao 호출
		MemberDao dao = new MemberDao();
		
		//dto 선언
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		list = dao.select();
		
		request.setAttribute("list", list);
		
		//돌려줄 페이지 선택
		 return "HTML/nsh/SorderList.jsp";
	}
}
