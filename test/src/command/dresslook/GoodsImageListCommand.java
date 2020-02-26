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
import dto.GoodsImageDto;
import net.sf.json.JSONArray;

public class GoodsImageListCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		GoodsDao2 dao = new GoodsDao2();
		List<GoodsImageDto> list2 = dao.GIlist(); 
		String list2JS = null;
		for (int i = 0; i < list2.size(); i++) {
			String imageString2 = new String(Base64.encodeBase64(list2.get(i).getGd_image()));
			String changeString2 = "data:image/png;base64," + imageString2;
			list2.get(i).setStringImage(changeString2);
			list2JS = JSONArray.fromObject(list2).toString(); 
		}	
		return "ajax:"+list2JS;
	}

}
