package command.seller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;


public class goodsList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		
		String sid = request.getParameter("s_id");
		GoodsDao dao = new GoodsDao();
		
		List<GoodsDto> list1 = dao.SellerGoodsList(sid);
	
		request.setAttribute("list", list1);
		
		return "HTML/kjw/goodsList.jsp";
	}
}