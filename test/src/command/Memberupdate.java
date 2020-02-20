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
        String Stnum =(request.getParameter("m_id"));

        MemberDto dto = new MemberDto();
        MemberDao dao = new MemberDao();
        dto.setM_pwd(request.getParameter("m_pwd"));
        dto.setM_name(request.getParameter("m_name"));
       // dto.setM_birth(request.getParameter("m_birth"));
        dto.setM_email(request.getParameter("m_email"));
        dto.setM_phone(request.getParameter("m_phone"));
        dto.setM_zip(Integer.parseInt(request.getParameter("m_zip")));
        dto.setM_addr1(request.getParameter("m_addr1"));
        dto.setM_addr2(request.getParameter("m_addr2"));
        dto.setM_grade(request.getParameter("m_grade"));
        dto.setM_status(request.getParameter("m_status"));
      //  try {
	//		dto.setRecent_connection(new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("m_recent")));
	//	} catch (ParseException e) {
	//		e.printStackTrace();
	//	}
        dto.setM_point(Integer.parseInt(request.getParameter("m_point")));
        dto.setM_sex(request.getParameter("m_sex"));
        int update = dao.updateM(dto);
        if(update>0){


            System.out.println("수정 성공");
            response.sendRedirect(context+"/memberlist.do");
            //post 방식으로 이동했거나 forward로 이동했을 경우 연속해서 forward 불가능 sendRedirect 사용해야 됨
        }else{
            System.out.println("수정 실패");
            response.sendRedirect(context+"/memberupdate.do?m_id="+dto);
        }
		return "HTML/nsh/updateM.jsp";
	}

	}

