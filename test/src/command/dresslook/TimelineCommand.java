package command.dresslook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import dao.LookDao;
import dto.CodyDto;
import dto.LookDto;

public class TimelineCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CodyDto dto = new CodyDto();
		
		return "/HTML/YCW/timelineMain.jsp";
	}

}
