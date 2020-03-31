package command.manager;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.SellerDao;
import dto.SellerDto;

public class SellerList implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		SellerDao dao = new SellerDao();
		ArrayList<SellerDto> list = new ArrayList<>();
		list = dao.select();
		request.setAttribute("list", list);
		
		
		return "HTML/kjw/SellerList.jsp";
	}

}
