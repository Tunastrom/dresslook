package command.dresslook;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import command.Command;
import dao.GoodsDao2;
import dto.GoodsDto;
import dto.GoodsImageDto;
import net.sf.json.JSONArray;

public class dressroom implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GoodsDao2 dao = new GoodsDao2();
		List<GoodsDto> list1=null;
		try {
			list1 = dao.GoodsList();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		String list1JS = null;
		List<GoodsImageDto> list2 = dao.GIlist();
		
		// 썸네일용 blob 데이터 img 태그 src=""안에 넣을 수 있는 String로 변환
		for (int i = 0; i < list1.size(); i++) {
			/* System.out.println("list.get(i): "+list.get(i)); */
			String imageString1 = new String(Base64.encodeBase64(list1.get(i).getG_image()));
			String changeString1 = "data:image/gif;base64," + imageString1;
			list1.get(i).setStringImage(changeString1);
			list1JS = JSONArray.fromObject(list1).toString();
		}
		String list2JS = null;
		// 팔레트용 blob 데이터 img 태그 src=""안에 넣을 수 있는 String로 변환
		for (int i = 0; i < list2.size(); i++) {
			String imageString2 = new String(Base64.encodeBase64(list2.get(i).getGd_image()));
			String changeString2 = "data:image/png;base64," + imageString2;
			list2.get(i).setStringImage(changeString2);
			list2JS = JSONArray.fromObject(list2).toString();
		}	
		request.setAttribute("list1", list1);
		request.setAttribute("list1JS", list1JS);
		request.setAttribute("list2JS", list2JS);
		
		
		return "HTML/YCW/dressroom.jsp";
	}
	
}
