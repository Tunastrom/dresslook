package command.dresslook;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.CodyDao;
import dto.CodyDto;


public class TimelineCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CodyDto dto = new CodyDto();
			CodyDao dao = new CodyDao();
			List<CodyDto> list = dao.CodyList();
			System.out.println("Codylist: "+list);
			request.setAttribute("CodyList", list);
		return "/HTML/YCW/timelineMain.jsp";
	}

}
