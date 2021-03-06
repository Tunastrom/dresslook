package command.manager;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class MGoodsList implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		GoodsDao dao = new GoodsDao();
		String col = dao.checkNull(request.getParameter("col"));
		String word = dao.checkNull(request.getParameter("word"));
		ArrayList<GoodsDto> list = dao.mlist(col, word);
		
		request.setAttribute("list", list);
		
		return "HTML/kjw/MgoodsList.jsp";
	}

}
