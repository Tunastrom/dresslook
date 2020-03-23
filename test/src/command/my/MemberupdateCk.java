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

		DateFormat sdFormat = new SimpleDateFormat("yyyy-mm-dd");
		System.out.println("birth:" + request.getParameter("birth"));

		Date birth = (Date) request.getSession().getAttribute("birth");

		try {
			birth = (Date) sdFormat.parse(request.getParameter("birth"));
		} catch (ParseException e) {
		}

		String id = (String) request.getSession().getAttribute("id");

		MemberDto dto = new MemberDto();

		java.util.Date sBirth = new java.sql.Date(birth.getTime());

		dto.setM_name(name);
		dto.setM_email(email);
		dto.setM_phone(phone);
		dto.setM_zip(zip);
		dto.setM_addr1(addr1);
		dto.setM_addr2(addr2);
		dto.setM_birth(sBirth);
		dto.setM_id(id);

		MemberDao dao = new MemberDao();

		dao.update(dto);

		return "HTML/lsj/memberLogin.jsp";
	}

}
