package command.dresslook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.CodyDao;
import dao.GoodsDao;
import dao.LookDao;
import dto.CodyDto;
import dto.LookDto;

public class CodyContentsCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String m_id = request.getSession().getAttribute("id").toString();
		String l_code = request.getParameter("l_code");
		CodyDto dto = new CodyDto();
		CodyDao dao = new CodyDao();
		dto = dao.CodySelect(m_id,l_code);
		LookDao lDao = new LookDao();
		String g_nums = lDao.lookDetailSelect(dto.getL_code());
		GoodsDao gDao = new GoodsDao();
		
		request.setAttribute("CodyDto", dto);
		request.setAttribute("GoodsList", gDao.GoodsList("G", g_nums));
		/*
		LookDao dao = new LookDao();
		LookDto dto = new LookDto();
		GoodsDao gDao = new GoodsDao();
		
		String lCode = request.getParameter("lCode");
		System.out.println("lCode: "+ lCode);
		dto = dao.LookSelect(lCode);
		System.out.println("l_code: " + dto.getL_code());
		String g_nums = dao.lookDetailSelect(dto.getL_code());
		dto.setG_nums(g_nums);
		System.out.println("dto: " + dto);
		
		List<GoodsDto> goodsList = gDao.GoodsList("G", g_nums);
		request.setAttribute("LookDto", dto);
		request.setAttribute("goodsList", goodsList);
		*/
		
		return "HTML/YCW/CodyContents.jsp";
	}

}
