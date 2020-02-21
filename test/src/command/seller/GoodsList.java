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
		//blob 데이터 img 태그 src=""안에 넣을 수 있는 String로 변환
		for (int i = 0; i < list.size(); i++) {
			/* System.out.println("list.get(i): "+list.get(i)); */
			String imageString = new String(Base64.encodeBase64(list.get(i).getG_image()));
			String changeString = "data:image/gif;base64," + imageString;
			String image_palString = new String(Base64.encodeBase64(list.get(i).getG_image_pal()));
			String pal_changeString = "data:image/gif;base64," + image_palString;
			list.get(i).setStringImage(changeString);
			list.get(i).setStringImage_pal(pal_changeString);
		}
		request.setAttribute("list", list);

		return "HTML/kjw/goodsList.jsp";
	}
}
