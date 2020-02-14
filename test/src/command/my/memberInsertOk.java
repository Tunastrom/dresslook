package command.my;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class memberInsertOk implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();

		dto.setM_id(request.getParameter("id"));
		dto.setM_pwd(request.getParameter("password"));
		dto.setM_name(request.getParameter("name"));
		dto.setM_email(request.getParameter("email"));
		dto.setM_zip(Integer.parseInt(request.getParameter("zip")));
		dto.setM_addr1(request.getParameter("addr1"));
		dto.setM_addr2(request.getParameter("addr2"));
		String from = request.getParameter("birth");
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			dto.setM_birth(transFormat.parse(from));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dto.setM_sex(request.getParameter("gender"));
		int r = dao.insert(dto);

		String path = "/HTML/kjw/memberInsertOk.jsp";
		request.setAttribute("pass", r);
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

		return null;
	}

}
