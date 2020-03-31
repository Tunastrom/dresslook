package command.manager;

import java.io.IOException;
import java.text.ParseException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class MemberUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();
		dto.setM_id(request.getParameter("id"));
		dto.setM_pwd(request.getParameter("pwd"));
		dto.setM_name(request.getParameter("name"));
		dto.setM_email(request.getParameter("mail"));
		dto.setM_birth((java.sql.Date.valueOf(request.getParameter("birth"))));
		dto.setM_phone(request.getParameter("phone"));
		dto.setM_zip(request.getParameter("zip"));
		dto.setM_add1(request.getParameter("add1"));
		dto.setM_add2(request.getParameter("add2"));
		dto.setM_status(request.getParameter("status"));
		dto.setM_point(Integer.parseInt(request.getParameter("point")));
		dto.setM_sex(request.getParameter("sex"));
		
		System.out.println(dto + "=========================");
		int pass = dao.updateM(dto);
		request.setAttribute("pass", pass);
		
		
		return "HTML/kjw/UpdateOk.jsp";
	}
	

}
