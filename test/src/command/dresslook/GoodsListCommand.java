package command.dresslook;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;
import net.sf.json.JSONArray;

public class GoodsListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		String no = request.getParameter("no");
		String g_nums = request.getParameter("g_nums");
		System.out.println("no: "+ no + " g_nums: " + g_nums);
		String noOrG_nums = null;
		GoodsDao dao = new GoodsDao();
		List<GoodsDto> list1 = null;
		if (no != null && g_nums ==null) {
			noOrG_nums = "N";
			list1 = dao.GoodsList(noOrG_nums, no);
		} else if (g_nums != null && no == null) {
			noOrG_nums = "G";
			list1 = dao.GoodsList(noOrG_nums, g_nums);
		}
		String list1JS = null;
		/*
		 * for (int i = 0; i < list1.size(); i++) { String imageString1 = new
		 * String(Base64.encodeBase64(list1.get(i).getG_image())); String changeString1
		 * = "data:image/gif;base64," + imageString1;
		 * list1.get(i).setStringImage(changeString1); list1.get(i).setG_image(null); }
		 */ 
		list1JS = JSONArray.fromObject(list1).toString();
		return "ajax:" + list1JS;
	}
}
