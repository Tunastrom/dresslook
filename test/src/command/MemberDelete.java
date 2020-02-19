package command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.MemberDto;




public class MemberDelete implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("DDDDDDDDDDDDDD");
		//dao 호출
		MemberDao dao = new MemberDao();
		//dto 선언
		MemberDto dto= new MemberDto();
		dto.setM_id(request.getParameter("deleteId"));
		
		int result = 0;
		try {
			result = dao.delete(dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("result", result);
		
		//돌려줄 페이지 선택
		 return "memberlist.do";
	}
}
