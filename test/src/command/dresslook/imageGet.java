package command.dresslook;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import command.Command;
import dao.ImgDao;
import dto.imgDto;
import net.sf.json.JSONArray;

public class imageGet implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ImgDao dao = new ImgDao();
		List<imgDto> list = dao.selectList();
		// 자바 객체 -> JSON string
		String result = JSONArray.fromObject(list).toString();
		System.out.println(result);
		return "ajax:" + result;
	}

}
