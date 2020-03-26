package command.seller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class goodsRead implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		GoodsDao dao = new GoodsDao();
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		int g_num  = Integer.parseInt(request.getParameter("id"));
		System.out.println(g_num);
		list = dao.SellerGoodsOne(g_num);
		request.setAttribute("dto", list);
		
		return "HTML/kjw/GoodsRead.jsp";
	}

}
