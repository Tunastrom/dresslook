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
import dao.GoodsDao2;
import dto.GoodsDto;

public class InsertGoods implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uploadPath = request.getSession() // session 기본 객체
				.getServletContext() // application 기본객체
				.getRealPath("/images"); // upload는 폴더명 / 폴더의 경로를
											// 구해옴s
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
		     
		     byte[] file = Files.readAllBytes(Paths.get(uploadPath+"/"+fileName));
		     		
		     GoodsDto dto = new GoodsDto();
		     dto.setG_name(multi.getParameter("name"));
		     System.out.println("========"+dto.getG_name());
		     dto.setG_price(Integer.parseInt(multi.getParameter("grice")));
		     dto.setS_price(Integer.parseInt(multi.getParameter("srice")));
		     dto.setG_size(multi.getParameter("size"));
		     dto.setColor(multi.getParameter("color"));
		     dto.setG_inven(multi.getParameter("inven"));
		     dto.setS_id(multi.getParameter("id"));
		     dto.setMaker(multi.getParameter("maker"));
		     dto.setG_image(file);
		     dto.setG_info(multi.getParameter("gcode"));   
		     dto.setG_code(multi.getParameter("scode"));
		     dto.setG_sex(multi.getParameter("prior"));
		     dto.setG_prior(Integer.parseInt(multi.getParameter("status")));
		     dto.setG_status(multi.getParameter("status"));
		     dto.setStringImage(multi.getParameter("stringImage"));
		     dto.setSize(fileSize);
		     
		    GoodsDao2 dao = new GoodsDao2();
		    int result = dao.BlobInsert(dto);
		    System.out.println(result);
		    request.setAttribute("result", result);
			return "redirect:GoodsList.do";
		
	}
}
