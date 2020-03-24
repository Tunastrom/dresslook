package command.seller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import dao.GoodsDao;
import dao.GoodsDao;
import dao.LookDao;
import dto.LookDto;

public class InsertLooks implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String addPath = "c:Temp";
		    String uploadPath = addPath + File.separator + "goodsImgs/lookImg";
//		    	request.getSession() // session 기본 객체
//				.getServletContext() // application 기본객체
//				.getRealPath("/images"); // upload는 폴더명 / 폴더의 경로를
//									    // 구해옴
			MultipartRequest multi = new MultipartRequest( // MultipartRequest 인스턴스 생성(cos.jar의 라이브러리)
					request, 
					uploadPath, // 파일을 저장할 디렉토리 지정
					10 * 1024 * 1024, // 첨부파일 최대 용량 설정(bite) / 10KB / 용량 초과 시 예외 발생
					"utf-8", // 인코딩 방식 지정
					new DefaultFileRenamePolicy()// 중복 파일 처리(동일한 파일명이 업로드되면 뒤에 숫자 등을 붙여 중복 회피)
			);
		     String fileInput = "image";
		     String fileName = "";
		     File fileObj = null;  //java.io 사용함
		     long fileSize = 0;
			
		     fileName = multi.getFilesystemName(fileInput);            // 파일명
		     if (fileName != null) { 
		         fileObj = multi.getFile(fileInput);                             //파일객체
		         fileSize = fileObj.length();  
		     }
		     
		/* byte[] file = Files.readAllBytes(Paths.get(uploadPath+"/"+fileName)); */
		     		
		     LookDto dto = new LookDto();
		/* dto.setL_image(file); */
		     dto.setG_nums(multi.getParameter("gnums"));
		     dto.setM_id(multi.getParameter("mid"));
		     dto.setL_open(multi.getParameter("lopen"));
		     dto.setSize(fileSize);
		/* System.out.println(dto); */
		     
		    LookDao dao = new LookDao();
		    int result1 = dao.LookInsert(dto);
		    int result2 = dao.LookDetailInsert(dto);
		/*
		 * System.out.println("result1: "+result1);
		 * System.out.println("result2: "+result2);
		 */
		    request.setAttribute("result1", result1);
		    request.setAttribute("result2", result2);
			return "redirect:looksList.do";
		
	}
}
