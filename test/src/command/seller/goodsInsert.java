package command.seller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;


public class goodsInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = (String)request.getSession().getAttribute("sid");
		System.out.println(sid+"+++++++++++");
		request.setAttribute("sid", sid);
		
		return "HTML/YCW/goodsInsert.jsp";		     
	}

}
