package command.my;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class MemberupdateCk implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String zip = request.getParameter("zip");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date birth = null;
		try {
			birth = (Date) sdFormat.parse(request.getParameter("birth"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String id = (String) request.getSession().getAttribute("id");

		MemberDto dto = new MemberDto();

		dto.setM_name(name);
		dto.setM_email(email);
		dto.setM_phone(phone);
		dto.setM_zip(zip);
		dto.setM_add1(addr1);
		dto.setM_add2(addr2);
		dto.setM_birth(birth);
		dto.setM_id(id);
		
		
		

		
		MemberDao dao = new MemberDao();

		dao.update(dto);

		return "HTML/lsj/memberLogin.jsp";
	}

}
