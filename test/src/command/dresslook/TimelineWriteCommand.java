package command.dresslook;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import dao.GoodsDao;
import dao.LookDao;
import dto.GoodsDto;
import dto.LookDto;

public class TimelineWriteCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
		   throws ServletException, IOException, ParseException {
		   
		   LookDao dao = new LookDao();
		   LookDto dto = new LookDto();
		   GoodsDao gDao = new GoodsDao();
		   String l_code = "0";	
		   
		   dto = dao.LookSelect(l_code);
		   System.out.println("l_code: "+dto.getL_code());
		   String g_nums = dao.lookDetailSelect(dto.getL_code());
		   dto.setG_nums(g_nums);
		   System.out.println("dto: "+dto);
		   List<GoodsDto> goodsList = gDao.GoodsList("G", g_nums);
		   HttpSession session = request.getSession();
		   session.setAttribute("LookDto", dto);
		   session.setAttribute("goodsList", goodsList);
		   
		return "HTML/YCW/TimelineWrite.jsp";
	}

}
