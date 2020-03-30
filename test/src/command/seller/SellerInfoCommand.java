package command.seller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.SellerDao;
import dto.MemberDto;
import dto.SellerDto;

public class SellerInfoCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		// TODO Auto-generated method stub
		SellerDao dao=new SellerDao();
		String sid =(String) request.getSession().getAttribute("sid");
		SellerDto dto = dao.sellerSelect(sid);
		
		request.setAttribute("dto", dto);
		return "HTML/lsj/SellerInfo.jsp";
		
		
		
		
		
		
	}

}
