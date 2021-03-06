package command.seller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.SellerDao;
import dto.SellerDto;

public class SellerInsertOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		String sellerID = request.getParameter("sellerID");
		String sellerPW = request.getParameter("sellerPW");
		String cname = request.getParameter("cname");
		String email = request.getParameter("email");
		String bizNum = request.getParameter("bizNum");
		String cpnum = request.getParameter("cpnum");
		String zip = request.getParameter("zip");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		
		System.out.println(cpnum);
		
		

		SellerDto dto = new SellerDto();

		dto.setS_id(sellerID);
		dto.setS_pwd(sellerPW);
		dto.setS_cname(cname);
		dto.setS_email(email);
		dto.setC_number(bizNum);
		dto.setS_phone(cpnum);
		dto.setS_zip(zip);
		dto.setS_addr1(addr1);
		dto.setS_addr2(addr2);
		
		

		SellerDao dao = new SellerDao();

		dao.sellerInsert(dto);

		return "HTML/lsj/sellerLogin.jsp";

	}

	

}
