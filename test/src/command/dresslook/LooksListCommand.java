package command.dresslook;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import command.Command;
import dao.GoodsDao;
import dao.LookDao;
import dto.GoodsDto;
import dto.LookDto;
import net.sf.json.JSONArray;

public class LooksListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LookDao dao = new LookDao();
		List<LookDto> list = dao.LooksList();

		for (int i = 0; i < list.size(); i++) {
			String imageString = new String(Base64.encodeBase64(list.get(i).getL_image()));
			String changeString = "data:image/gif;base64," + imageString;
			list.get(i).setStringImage(changeString);
			if (list.get(i).getStringImage() != null && list.get(i).getStringImage() !="") {
				System.out.println("stringImage isn't null");
			}
		}
		String list1JS = JSONArray.fromObject(list).toString(); 
		return "ajax:"+list1JS;
	}
}
