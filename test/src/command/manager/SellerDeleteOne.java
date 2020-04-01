package command.manager;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.SellerDao;
import dto.SellerDto;

public class SellerDeleteOne implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		SellerDao dao = new SellerDao();
		SellerDto dto = new SellerDto();
		dto.setS_id(request.getParameter("del"));
		
		int pass = dao.delete(dto);
		request.setAttribute("pass", pass);
		
		return "HTML/kjw/SellerDelete.jsp";
	}

}
