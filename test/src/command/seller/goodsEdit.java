package command.seller;

import java.io.IOException;
import java.text.ParseException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class goodsEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		GoodsDao dao = new GoodsDao();
		GoodsDto dto = new GoodsDto();
		System.out.println(request.getParameter("grice")+"=================");
		dto.setG_name(request.getParameter("name"));
		dto.setG_price(Integer.parseInt(request.getParameter("grice")));
		dto.setS_price(Integer.parseInt(request.getParameter("srice")));
		dto.setG_size(request.getParameter("size"));
		dto.setColor(request.getParameter("color"));
		dto.setG_inven(request.getParameter("inven"));
		dto.setG_maker(request.getParameter("maker"));
		dto.setG_info(request.getParameter("info"));
		dto.setG_code(request.getParameter("gcode"));
		dto.setG_sex(request.getParameter("scode"));
		dto.setG_prior((request.getParameter("prior")));
		dto.setG_status(request.getParameter("status"));
		dto.setG_num(Integer.parseInt(request.getParameter("num")));
		
		int pass = dao.goodsUpdate(dto);

		request.setAttribute("pass", pass);

		return "HTML/kjw/GoodsEdit.jsp";
	}

}
