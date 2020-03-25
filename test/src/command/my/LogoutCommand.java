package command.my;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class LogoutCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		// TODO Auto-generated method stub
		HttpSession httpSession=request.getSession();
		/* String id=(String) httpSession.getAttribute("id"); */
		httpSession.removeAttribute("id");
		httpSession.removeAttribute("au");
		
		
		/*
		 * request.setAttribute("id", id); String path="HTML/lsj/logout.jsp";
		 * RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		 * dispatcher.forward(request, response);
		 */
		
		
		
		
		return "timeline.do";
	}

}
