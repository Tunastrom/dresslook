package command.seller;

import java.io.IOException;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ha.deploy.FarmWarDeployer;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import dto.GoodsDto;

public class goodsInsertOk implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uploadPath = request.getSession() // session 기본 객체
				.getServletContext() // application 기본객체
				.getRealPath("/images"); // upload는 폴더명 / 폴더의 경로를
											// 구해옴

		// out.print(uploadPath);

		try {
			MultipartRequest multi = new MultipartRequest( // MultipartRequest 인스턴스 생성(cos.jar의 라이브러리)
					request, uploadPath, // 파일을 저장할 디렉토리 지정
					10 * 1024 * 1024, // 첨부파일 최대 용량 설정(bite) / 10KB / 용량 초과 시 예외 발생
					"utf-8", // 인코딩 방식 지정
					new DefaultFileRenamePolicy() // 중복 파일 처리(동일한 파일명이 업로드되면 뒤에 숫자 등을 붙여 중복 회피)
			);
			String fileName1 = multi.getFilesystemName("image"); // name=file1의 업로드된 시스템 파일명을 구함(중복된 파일이 있으면, 중복 처리
																	// 후 파일
																	// 이름)
			String orgfileName1 = multi.getOriginalFileName("image"); // name=file1의 업로드된 원본파일 이름을 구함(중복 처리 전 이름)

			response.getWriter().append("fileName1:" + fileName1 + "<br>");
			response.getWriter().append("orgfileName1:" + orgfileName1 + "<br>");
			response.getWriter().append("uploadPath:" + uploadPath + "<br>");
			System.out.println(fileName1);
			System.out.println(orgfileName1);
			System.out.println(uploadPath);

		} catch (Exception e) {
			e.getStackTrace();
		} // 업로드 종료
		return null;

		// 파라미터를 DTO에 담기
		Integer g_num = Integer.parseInt(request.getParameter("num"));
		String g_name = request.getParameter("name");
		Integer gprice = Integer.parseInt(request.getParameter("gprice"));
		Integer sprice = Integer.parseInt(request.getParameter("sprice"));
		String g_size = request.getParameter("size");
		String g_color = request.getParameter("color");
		String g_inven = request.getParameter("id");
		String g_maker = request.getParameter("maker");
		String g_code = request.getParameter("gcode");
		Blob g_image = request.getParameter("image");
		// BinaryStream
		String s_code = request.getParameter("scode");
		Integer g_prior = Integer.parseInt(request.getParameter("prior"));
		String g_status = request.getParameter("status");

		GoodsDto dto = new GoodsDto();
		dto.setNumber(g_num);
		dto.setName(g_name);
		dto.setGprice(gprice);
		dto.setSprice(sprice);
		dto.setSize(g_size);
		dto.setColor(g_color);
		dto.setInventory(g_inven);
		dto.setMaker(g_maker);
		dto.setGcode(g_code);
		dto.setScode(s_code);
		dto.setprior(g_prior);
		dto.setStatus(g_status);

		return null;
	}

}
