package command.seller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import dao.GoodsDao;
import dao.GoodsDao2;
import dto.GoodsDto;
import dto.GoodsImageDto;
import dto.GooodsImageDto;

public class InsertGoods implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    String uploadPath = request.getSession() // session 기본 객체
				.getServletContext() // application 기본객체
				.getRealPath("/images"); // upload는 폴더명 / 폴더의 경로를
									    // 구해옴ss
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
			 GoodsDto dto = new GoodsDto();
			 GoodsImageDto GIdto = new GoodsImageDto();
			 //복수의 이미지파일 dto의 byte[]필드에 저장
			 int palAndnot = 0;
			 while (files.hasMoreElements()) {
				 String fileInput = (String)files.nextElement(); //file의 input 태그에 저장한 name속성 값 가져옴  	
				 fileName = multi.getFilesystemName(fileInput); //파일의 실제 이름 가져옴
				 // 파일명
				 if (fileName != null) { 
			         fileObj = multi.getFile(fileInput); //파일객체 가져옴
					 fileSize = fileObj.length();  
			     } 
				 byte[] file = Files.readAllBytes(Paths.get(uploadPath+"/"+fileName)); //파일 바이트 타입으로 변환
				 //색깔별 옷 저장기능 구현시 if문에 구현
				 if (palAndnot==0) {
					 GIdto.setGd_image(file);
					 GIdto.setSize(fileSize);
					 GIdto.setImg_type("pal");
					 file=null;
					 fileSize=0;
				 } else if (palAndnot==1) {
					 dto.setG_image(file);
					 dto.setSize(fileSize);
				 }
				 palAndnot++;
			 }
		     //나머지 값 dto의 각 필드에 저장
		     dto.setG_name(multi.getParameter("name"));
		     System.out.println("========"+dto.getG_name());
		     dto.setG_price(Integer.parseInt(multi.getParameter("grice")));
		     dto.setS_price(Integer.parseInt(multi.getParameter("srice")));
		     dto.setG_size(multi.getParameter("size"));
		     dto.setColor(multi.getParameter("color"));
		     dto.setG_inven(multi.getParameter("inven"));
		     dto.setS_id(multi.getParameter("id"));
		     dto.setMaker(multi.getParameter("maker"));
		     dto.setG_info(multi.getParameter("info"));   
		     dto.setG_code(multi.getParameter("gcode"));
		     dto.setG_sex(multi.getParameter("scode"));
		     dto.setG_prior(Integer.parseInt(multi.getParameter("prior")));
		     dto.setG_status(multi.getParameter("status"));
		     
		    GoodsDao2 dao = new GoodsDao2();
		    int result1 = dao.BlobInsert(dto);
		    int result2 = dao.
		    System.out.println(result);
		    request.setAttribute("result", result);
			return "redirect:GoodsList.do";
		
	}
}
