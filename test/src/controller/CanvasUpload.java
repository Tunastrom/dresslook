package controller;

/*import java.io.BufferedInputStream;*/
import java.io.File;
/*import java.io.FileOutputStream;*/
import java.io.IOException;
import java.text.ParseException;
/*import java.io.InputStream;
import java.io.OutputStream;*/
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import command.Command;
import command.collection.OrderSheetCommand;
import command.dresslook.TimelineWriteCommand;

/*import org.apache.commons.io.FileUtils;*/

import dao.LookDao;
import dto.LookDto;

/**
 * Servlet implementation class CanvasUpload
 */
@WebServlet("*.doCU")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 30, maxRequestSize = 1024 * 1024
		* 50, location = "c:/Temp")
public class CanvasUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/lookImg";

	HashMap<String, Command> cont = new HashMap<>();
	 
	public CanvasUpload() { super(); }
	
	public void init(ServletConfig config) throws ServletException { 
	    cont.put("/new_TimelineWriteCommand.doCU", new TimelineWriteCommand());
        cont.put("/new_orderSheetCommand.doCU", new OrderSheetCommand()); 
    }
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String appPath = "C:/USers/User/git/dresslook/test/WebContent/images"; /*request.getServletContext().getRealPath("/images");*/
		String savePath = appPath + File.separator + SAVE_DIR;
		// 서버에 savePath에 해당하는 디렉토리가 있는지 확인해서 없으면 만들어라
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		// 첨부파일 저장
		LookDto dto = new LookDto();
		LookDao dao = new LookDao();
		File lookFile = null;
		String destination = null;
		for (Part part : request.getParts()) {
			System.out.println("///GCT: "+part.getContentType());
			if (part.getContentType() != null) {
				// String fileName = extractFileName(part);
			    long t = System.currentTimeMillis();
				int r = (int)(Math.random()*1000000);
				String fileName = t+r+".png";
				part.write(savePath + File.separator + fileName);
				/*
				 * lookFile = new File(savePath + File.separator + fileName);
				 * getHeader("content-disposition") byte [] l_image =
				 * FileUtils.readFileToByteArray(lookFile);
				 * dto.setL_image(l_image); */
				dto.setL_fileName(fileName);
				dto.setM_id("test");
				dto.setL_open("N");
				dto.setG_nums(request.getParameter("gNums"));
				/* dto.setSize(part.getSize()); */
				dao.LookInsert(dto);
				dao.LookDetailInsert(dto);
			}
		}
		request.setCharacterEncoding("utf-8");
		  // 실행할 Class객체를 찾아주는 부분 // hashMap의 키값인 문자열 ".xxxxx"를 만드는 과정
		String uri = request.getRequestURI(); 
		String context = request.getContextPath();
		String path = uri.substring(context.length()); // 로그처리 
		System.out.println("CU path=" + path);
		Command commandImpl = cont.get(path);
		System.out.println("commandImpl: "+ commandImpl);
		 // 권한체크(로그인 체크)
		 String page = null;
		 response.setContentType("text/html; charset=UTF-8");
		 if(commandImpl != null) { //return 된
			// viewpage 주소 텍스트 실행 
			 try { 
				 page = commandImpl.execute(request, response); 
			 } catch (ServletException | IOException | ParseException e) { 
				 e.printStackTrace();
		     } 
			 System.out.println("CU:" +page);
				if (page != null & !page.isEmpty()) {
					if (page.startsWith("redirect:")) {
						String view = page.substring(9);
						/* response.sendRedirect(view); */
					} else if (page.startsWith("ajax:")) {
						response.getWriter().append(page.substring(5));
						/* System.out.println(page.substring(5)); */
					} else if (page.startsWith("script:")) {
						response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
					} else {
						request.getRequestDispatcher(page).forward(request, response);
					}
				}
		 }
		 
	}
	
	/*
	 * // 파라미터 읽기 String strParam = request.getParameter("strParam");
	 * request.setAttribute("message", "파일업로드에 성공 하였습니다.!");
	 * response.getWriter().append("success");
	 */	 
	
	/*
	 * private String extractFileName(Part part) { String contentDisp =
	 * part.getHeader("content-disposition"); String[] items =
	 * contentDisp.split(";"); for (String s : items) { if
	 * (s.trim().startsWith("filename")) { return s.substring(s.indexOf("=") + 2,
	 * s.length()-1); } } return ""; }
	 */

}
