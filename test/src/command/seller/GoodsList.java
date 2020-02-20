package command.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class GoodsList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GoodsDao dao = new GoodsDao();
		List<GoodsDto> list = dao.GoodsList();

		for (int i = 0; i < list.size(); i++) {
			String imageString = new String(Base64.encodeBase64(list.get(i).getG_image()));
			String changeString = "data:image/gif;base64," + imageString;
			list.get(i).setStringImage(changeString);
		}

		request.setAttribute("list", list);

		return "HTML/kjw/goodsList.jsp";
	}
}
