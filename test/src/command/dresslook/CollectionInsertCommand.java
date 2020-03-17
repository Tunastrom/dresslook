package command.dresslook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.SerializationUtils;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import dao.LookDao;
import dto.LookDto;

public class CollectionInsertCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Look이미지 Look테이블로 넘김
		String uploadPath = request.getSession().getServletContext().getRealPath("/images");
		MultipartRequest multi = new MultipartRequest(
				                 request,
				                 uploadPath,
				                 10*1024*1024,
				                 "utf-8", new DefaultFileRenamePolicy()
				                 );
				
		byte[] l_image = SerializationUtils.serialize(multi.getParameter("lookImg"));
		String g_nums = multi.getParameter("gNums");
		System.out.println("g_nums: " + g_nums);
		System.out.println("l_image: " + l_image);
		LookDto dto = new LookDto();
		dto.setL_image(l_image);
		dto.setG_nums(g_nums);
		dto.setL_open("n");
		dto.setM_id("test");
		LookDao dao = new LookDao();
		dao.LookInsert(dto);
		int result1 = 0;
		dao.LookDetailInsert(dto);
		int result2 = 0;
		System.out.println(result1);
		System.out.println(result2);
		request.setAttribute("result1", result1);
		request.setAttribute("result2", result2);
		return "redirect:collectionMain.do";
	}
}
