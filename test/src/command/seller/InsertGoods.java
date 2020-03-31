package command.seller;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class InsertGoods implements Command {
	private static final String SAVE_DIR = "goodsImg";

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// String addPath = "C:/USers/User/git/dresslook/test/WebContent/images";
		String addPath = request.getSession().getServletContext().getRealPath("/upload");

		String uploadPath = addPath + File.separator + SAVE_DIR;
		/* addPath + File.separator + "goodsImgs"; */
		// session 기본 객체 .getServletContext() // application 기본객체
		// upload는 폴더명 / 폴더의 경로를 // 구해옴
		System.out.println(uploadPath);

		File fileSaveDir = new File(uploadPath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}

		GoodsDto dto = new GoodsDto();
		int curIndex = 0;
		int palAndnot = 0;
		Collection<Part> parts = request.getParts();
		for (Part part : parts) {
			curIndex++;
			if (part.getContentType() != null) {
				// String fileName = extractFileName(part);
				long t = System.currentTimeMillis();
				int r = (int) (Math.random() * 1000000);
				String fileName = t + r + ".png";
				part.write(uploadPath + File.separator + fileName);
				/*
				 * lookFile = new File(savePath + File.separator + fileName);
				 * getHeader("content-disposition") byte [] l_image =
				 * FileUtils.readFileToByteArray(lookFile); dto.setL_image(l_image);
				 */
				if (palAndnot == 0) {
					/* GIdto.setGd_image(file); */
					dto.setGi_fileName(fileName);
					/* dto.setSize(fileSize); */
					dto.setGi_imgType("pal");
					System.out.println("palAndnot: " + palAndnot);
					palAndnot++;
					/* file=null; */
					/* fileSize=0; */
				} else if (palAndnot == 1) {
					/* dto.setG_image(file); */
					dto.setG_fileName(fileName);
					/* dto.setSize(fileSize); */
					System.out.println("g_fileName: " + dto.getG_fileName());
				}

			}
			if (curIndex == parts.size()) {
				System.out.println("curIndex: " + curIndex);
				dto.setG_name(request.getParameter("name"));
				System.out.println("========" + dto.getG_name());
				dto.setG_price(Integer.parseInt(request.getParameter("grice")));
				dto.setS_price(Integer.parseInt(request.getParameter("srice")));
				dto.setG_size(request.getParameter("size"));
				dto.setColor(request.getParameter("color"));
				dto.setG_inven(request.getParameter("inven"));
				// dto.setS_id(multi.getParameter("id"));
				dto.setS_id((String) request.getSession().getAttribute("sid"));
				dto.setMaker(request.getParameter("maker"));
				System.out.println("--------------------maker"+request.getParameter("maker"));
				dto.setG_info(request.getParameter("info"));
				dto.setG_code(request.getParameter("gcode"));
				dto.setG_sex(request.getParameter("scode"));
				dto.setG_prior(request.getParameter("prior"));
				dto.setG_status(request.getParameter("status"));
			}
		}
		System.out.println("dto: " + dto);

		GoodsDao dao = new GoodsDao();
		int result1 = 0;
		result1 = dao.goodsInsert(dto);
		int result2 = 0;
		result2 = dao.giInsert(dto);
		System.out.println(result1);
		System.out.println(result2);
		request.setAttribute("result1", result1);
		request.setAttribute("result2", result2);
		return "goodsList.do";

		/*
		 * MultipartRequest multi = new MultipartRequest( // MultipartRequest 인스턴스
		 * 생성(cos.jar의 라이브러리) request, uploadPath, // 파일을 저장할 디렉토리 지정 10 * 1024 * 1024,
		 * // 첨부파일 최대 용량 설정(bite) / 10KB / 용량 초과 시 예외 발생 "utf-8", // 인코딩 방식 지정 new
		 * DefaultFileRenamePolicy()// 중복 파일 처리(동일한 파일명이 업로드되면 뒤에 숫자 등을 붙여 중복 회피) );
		 */

		/*
		 * String fileName = ""; File fileObj = null; //java.io 사용함 long fileSize = 0;
		 * //업로드 된 복수의 파일 Enumeration 타입 변수에 저장 Enumeration files =
		 * multi.getFileNames(); //Goodsdto, GoodsPaleteDto 선언 GoodsDto dto = new
		 * GoodsDto(); GoodsImageDto GIdto = new GoodsImageDto(); //복수의 이미지파일 dto의
		 * byte[]필드에 저장 int palAndnot=0; while (files.hasMoreElements()) { String
		 * fileInput = (String)files.nextElement(); //file의 input 태그에 저장한 name속성 값 가져옴
		 * fileName = multi.getFilesystemName(fileInput); //파일의 실제 이름 가져옴
		 * System.out.println("fileName:" + fileName); // 파일명 if (fileName != null) {
		 * fileObj = multi.getFile(fileInput); //파일객체 가져옴 fileSize = fileObj.length(); }
		 */
		/* byte[] file = Files.readAllBytes(Paths.get(uploadPath+"/"+fileName)); */ // 파일 바이트 타입으로 변환
		// 색깔별 옷 저장기능 구현시 if문에 구현
		// 나머지 값 dto의 각 필드에 저장

	}
}
