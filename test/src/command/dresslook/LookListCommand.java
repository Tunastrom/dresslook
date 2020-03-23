package command.dresslook;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import command.Command;
import dao.GoodsDao2;
import dao.LookDao;
import dto.GoodsDto;
import dto.LookDto;
import net.sf.json.JSONArray;

public class LookListCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		LookDao dao = new LookDao();
		List<LookDto> list = dao.LooksList();
		String listJS = null;
		for (int i = 0; i < list.size(); i++) {
			String imageString = new String(Base64.encodeBase64(list.get(i).getL_image()));
			String changeString = "data:image/png;base64," + imageString;
			System.out.println(changeString);
			list.get(i).setStringImage(changeString);
			list.get(i).setL_image(null);
		}
		listJS = JSONArray.fromObject(list).toString(); 
		return "ajax:" + listJS;
	}

}
