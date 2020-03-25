package command.seller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class SLogoutCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		HttpSession httpSession=request.getSession();
		/* String sid=(String) httpSession.getAttribute("sid"); */
		httpSession.removeAttribute("sid");
		
		
		/*
		 * request.setAttribute("sid", sid); String path="HTML/lsj/Slogout.jsp";
		 * RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		 * dispatcher.forward(request, response);
		 */
		
		
		
		return "timeline.do";
		
		
		
		
		
		
	}

}
