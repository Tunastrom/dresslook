package command.dresslook;

import java.io.IOException;
import java.util.List;
import java.util.StringJoiner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import dao.GoodsDao;
import dto.CodyDto;
import dto.GoodsDto;
import dto.GoodsImageDto;

public class DressRoomCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String dest = null;
			String pass = request.getParameter("pass");
			if (pass == null || pass == "") {
				pass ="1";
			}
	        if(pass.equals("1")) {
	        	dest = "HTML/YCW/DressRoom.jsp";
	        } else {
	        	HttpSession session = request.getSession();
	    		CodyDto dto = (CodyDto) session.getAttribute("CodyDto");
	    		GoodsDao Gdao = new GoodsDao();
	    		List<GoodsDto> list = (List<GoodsDto>) session.getAttribute("GoodsList");	
	    		if (dto != null && list != null) {
		 			   dest = "HTML/YCW/DressRoom.jsp";
		 			StringJoiner g_numJoin = new StringJoiner(",");
		 			StringJoiner gi_fileNameJoin = new StringJoiner(",");
		 			for(GoodsDto Gdto : list) {
		 				g_numJoin.add(Gdto.getG_num().toString());
		 			}
		 			String g_nums = g_numJoin.toString();
		 			List<GoodsImageDto> GiList = Gdao.GIlist(g_nums);
		 			request.setAttribute("GoodsList", list);
		 			request.setAttribute("GIList", GiList);
			 	} else {
			 		dest = "redirect:HTML/YCW/CodyContents.jsp"; 
			 		request.setAttribute("errored", "errored");
			 	}
	        }
	        
		/*
		 * GoodsDao2 dao = new GoodsDao2(); List<GoodsDto> list1=null; try { list1 =
		  dao.GoodsList(); } catch (SQLException e) { e.printStackTrace(); } String
		  list1JS = null; List<GoodsImageDto> list2 = dao.GIlist();
		  
		  // 썸네일용 blob 데이터 img 태그 src=""안에 넣을 수 있는 String로 변환 for (int i = 0; i <
		  list1.size(); i++) { System.out.println("list.get(i): "+list.get(i)); String
		  imageString1 = new String(Base64.encodeBase64(list1.get(i).getG_image()));
		  String changeString1 = "data:image/gif;base64," + imageString1;
		  list1.get(i).setStringImage(changeString1); list1JS =
		  JSONArray.fromObject(list1).toString(); } String list2JS = null; // 팔레트용 blob
		  데이터 img 태그 src=""안에 넣을 수 있는 String로 변환 for (int i = 0; i < list2.size(); i++)
		  { String imageString2 = new
		  String(Base64.encodeBase64(list2.get(i).getGd_image())); String changeString2
		  = "data:image/png;base64," + imageString2;
		  list2.get(i).setStringImage(changeString2); list2JS =
		  JSONArray.fromObject(list2).toString(); } request.setAttribute("list1",
		  list1); request.setAttribute("list1JS", list1JS);
		  request.setAttribute("list2", list2);
	
		  //session 객체에서 id 받아와서 성별 조회한 후, 성별값 리퀘스트로 넘김
		   HttpSession Session =request.getSession(); 
		   String id = Session.getAttribute("id").toString();
		   MemberDao dao = new MemberDao();
           MemberDto dto = dao.select(id); 
           String sex=dto.getM_sex(); 
           request.setAttribute("sex", sex);
		*/
		return dest;
	}

}
