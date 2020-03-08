package command;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;

import dao.MemberDao;
import dto.MemberDto;


public class Memberupdate implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String context=request.getContextPath();
        String Stnum =(request.getParameter("id"));

        MemberDto dto = new MemberDto();
        MemberDao dao = new MemberDao();
        dto.setM_pwd(request.getParameter("pwd"));
        dto.setM_name(request.getParameter("name"));
        try {
			dto.setM_birth(new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("m_birth")));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
        dto.setM_email(request.getParameter("email"));
        dto.setM_phone(request.getParameter("phone"));
        dto.setM_zip(request.getParameter("m_zip"));
        dto.setM_add1(request.getParameter("add1"));
        dto.setM_add2(request.getParameter("add2"));
        dto.setM_grade(request.getParameter("au"));
        dto.setM_status(request.getParameter("status"));
        try {                                        
			dto.setM_recent(new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("recent")));
		} catch (ParseException e) {
			e.printStackTrace();
		}
        dto.setM_point(Integer.parseInt(request.getParameter("point")));
        dto.setM_sex(request.getParameter("sex"));
        int update = dao.updateM(dto);
        String path="HTML/nsh/updateM.jsp";
        	path="/memberlist.do";
            System.out.println("수정 성공");
            //response.sendRedirect(context+"/memberlist.do");
            //post 방식으로 이동했거나 forward로 이동했을 경우 연속해서 forward 불가능 sendRedirect 사용해야 됨
            //path = "redirect:/memberlist.do?id="+dto.getM_id();

		return path;
	}

	}

