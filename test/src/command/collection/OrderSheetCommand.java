package command.collection;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.LookDao;
import dto.LookDto;

public class OrderSheetCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * LookDao dao = new LookDao(); List<LookDto> list = dao.selectList(); String id
		 * = request.getParameter("m_id"); String cnt = dao.getCount("m_id");
		 * 
		 * if (cnt == null) { return "collectionMain.do"; } else {
		 * 
		 * request.setAttribute("list", list);
		 * 
		 * }
		 */

		return "HTML/YCW/OrderSheet.jsp";
	}
}
