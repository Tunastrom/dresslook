package command.dresslook;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import dao.LookDao;
import dto.GoodsDto;
import dto.GoodsImageDto;
import dto.LookDto;

public class LookInsertCommandForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		    String addPath = "C:/USers/User/git/dresslook/test/WebContent/images";
		    String uploadPath = addPath + File.separator + "/lookImg";
							/*
							 * request.getSession() .getServletContext() // application 기본객체
							 * .getRealPath("/images/goodsImg");
							 */
		    				  /* addPath + File.separator + "goodsImgs"; */
		                      // session 기본 객체 .getServletContext() // application 기본객체
		                    // upload는 폴더명 / 폴더의 경로를 // 구해옴
		    System.out.println(uploadPath);
			MultipartRequest multi = new MultipartRequest( // MultipartRequest 인스턴스 생성(cos.jar의 라이브러리)
					request, 
					uploadPath, // 파일을 저장할 디렉토리 지정
					10 * 1024 * 1024, // 첨부파일 최대 용량 설정(bite) / 10KB / 용량 초과 시 예외 발생
					"utf-8", // 인코딩 방식 지정
					new DefaultFileRenamePolicy()// 중복 파일 처리(동일한 파일명이 업로드되면 뒤에 숫자 등을 붙여 중복 회피)
			); 
		     String fileName = "";
		     File fileObj = null;  //java.io 사용함
		     long fileSize = 0;
		     //업로드 된 복수의 파일 Enumeration 타입 변수에 저장 
			 Enumeration files = multi.getFileNames(); 
			 //Goodsdto, GoodsPaleteDto 선언
			 LookDto dto = new LookDto();
			 LookDao dao = new LookDao();
			 //복수의 이미지파일 dto의 byte[]필드에 저장
			 
			 while (files.hasMoreElements()) {
				 String fileInput = (String)files.nextElement(); //file의 input 태그에 저장한 name속성 값 가져옴  	
				 fileName = multi.getFilesystemName(fileInput); //파일의 실제 이름 가져옴
				 System.out.println("fileName:" + fileName);
				 // 파일명
				 if (fileName != null) { 
			         fileObj = multi.getFile(fileInput); //파일객체 가져옴
					 fileSize = fileObj.length();
			     } 
		
			 }
			 String destination = multi.getParameter("destination");
			 if (destination.equals("collection")) {
				 
			 }
			 
			 String result=null;
			 
			 
			 
			 return result;
	}
}
