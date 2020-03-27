package command.dresslook;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import dao.CodyDao;
import dto.CodyDto;

public class TimelineUploadCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {

		CodyDto dto = new CodyDto();
		CodyDao dao = new CodyDao();

		HttpSession session = request.getSession();
		String id = session.getAttribute("id").toString();
		dto.setM_id(id);
		dto.setSubject(request.getParameter("lookName"));
		dto.setContents(request.getParameter("lookIntroduce"));
		dto.setL_code(request.getParameter("lCode"));
		dto.setTag(request.getParameter("tags"));
		System.out.println("CodycDto: " + dto);
		int result = dao.CodyInsert(dto);
		String dest = null;
		if (result > 0) {
			request.setAttribute("CodyDto", dao.CodySelect(id, dto.getL_code()));
			dest = "/HTML/YCW/CodyContents.jsp";
		} else {
			dest = "redirect:TimelineWriteCommand.jsp";
		}
		return dest;
	}
}
