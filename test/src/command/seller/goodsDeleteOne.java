package command.seller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class goodsDeleteOne implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		GoodsDao dao = new GoodsDao();
		GoodsDto dto = new GoodsDto();
		dto.setG_num((Integer.parseInt(request.getParameter("num")))); 
		
		int pass = dao.goodsDeleteOne(dto);
		request.setAttribute("pass", pass);
		
		return "HTML/kjw/GoodsDelete.jsp";
	}

}
