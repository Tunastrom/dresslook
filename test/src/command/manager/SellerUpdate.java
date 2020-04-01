package command.manager;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.SellerDao;
import dto.SellerDto;

public class SellerUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		SellerDao dao = new SellerDao();
		SellerDto dto = new SellerDto();
		dto.setS_id(request.getParameter("id"));
		dto.setS_pwd(request.getParameter("pwd"));
		dto.setS_cname(request.getParameter("name"));
		dto.setS_email(request.getParameter("mail"));
		dto.setC_number(request.getParameter("cnumber"));
		dto.setS_phone(request.getParameter("phone"));
		dto.setS_zip(request.getParameter("phone"));
		dto.setS_addr1(request.getParameter("add1"));
		dto.setS_addr2(request.getParameter("add2"));
		dto.setS_grade(request.getParameter("grade"));
		
		System.out.println(dto +"++++++++++++++++++++");
		int pass = dao.sellerUpdate(dto);
		request.setAttribute("pass", pass);
		
		
		
		return "HTML/kjw/SellerUpdateOk.jsp";
	}

}
