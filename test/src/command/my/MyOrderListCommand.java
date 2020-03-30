package command.my;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.OrdDetailDao;
import dto.OrdDetailDto;

public class MyOrderListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		OrdDetailDao dao=new OrdDetailDao();
		ArrayList<OrdDetailDto> list = dao.select("m_id");
		request.setAttribute("list", list);
						
			
		return "HTML/lsj/orderSheet2.jsp";
	}

}
