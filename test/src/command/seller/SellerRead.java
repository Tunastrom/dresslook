package command.seller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.SellerDao;
import dto.SellerDto;

public class SellerRead implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		SellerDao dao = new SellerDao();
		SellerDto dto = new SellerDto();
		String id = request.getParameter("id");
		dto = dao.sellerSelect(id);
		
		request.setAttribute("dto", dto);
		return "HTML/kjw/SellerRead.jsp";
	}

}
