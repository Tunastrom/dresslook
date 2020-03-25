package command.my;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.MemberDao;
import dto.MemberDto;

public class memberInsterOk implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {

		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		// String userPW2 = request.getParameter("userPW2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pnum = request.getParameter("pnum");
		String zip = request.getParameter("zip");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		System.out.println(pnum);
		/*
		 * DateFormat sdFormat = new SimpleDateFormat("yyyy-mm-dd");
		 * System.out.println("birth:" + request.getParameter("birth"));
		 */

		Date tbirth = transformDate(birth);

		MemberDto dto = new MemberDto();

		dto.setM_id(userID);
		dto.setM_pwd(userPW);
		dto.setM_name(name);
		dto.setM_email(email);
		dto.setM_phone(pnum);
		dto.setM_zip(zip);
		dto.setM_add1(addr1);
		dto.setM_add2(addr2);
		dto.setM_birth(tbirth);
		dto.setM_sex(gender);

		MemberDao dao = new MemberDao();

		dao.insert(dto);

		return "HTML/lsj/memberLogin.jsp";

	}

	public Date transformDate(String date) {
		SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyymmdd");

		// Date로 변경하기 위해서는 날짜 형식을 yyyy-mm-dd로 변경해야 한다.
		SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-mm-dd");

		java.util.Date tempDate = null;

		try {
			// 현재 yyyymmdd로된 날짜 형식으로 java.util.Date객체를 만든다.
			tempDate = beforeFormat.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		// java.util.Date를 yyyy-mm-dd 형식으로 변경하여 String로 반환한다.
		String transDate = afterFormat.format(tempDate);

		// 반환된 String 값을 Date로 변경한다.
		Date d = Date.valueOf(transDate);

		return d;
	}

}
