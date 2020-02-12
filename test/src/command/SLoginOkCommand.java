package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SellerDao;


public class SLoginOkCommand implements Command {



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SellerDao dao = new SellerDao();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		Boolean check = dao.sloginCheck(id, pw);

		if (check == null) {
			return "login.do";
		} else {

			HttpSession httpsession = request.getSession();
			httpsession.setAttribute("id", id);

			return "index.do";
		}

	}

}
