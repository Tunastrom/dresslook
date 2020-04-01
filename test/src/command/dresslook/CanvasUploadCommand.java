package command.dresslook;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import command.Command;
import dao.LookDao;
import dto.LookDto;

public class CanvasUploadCommand implements Command {
	private static final String SAVE_DIR = "/lookImg";

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		String appPath = request.getServletContext().getRealPath("/upload");/*
																				 * request.getServletContext().
																				 * getRealPath("/images");
																				 */
		String savePath = appPath + File.separator + SAVE_DIR;
// 서버에 savePath에 해당하는 디렉토리가 있는지 확인해서 없으면 만들어라
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
// 첨부파일 저장
		LookDto dto = new LookDto();
		LookDao dao = new LookDao();
		/* File lookFile = null; */
		String result =null;
		for (Part part : request.getParts()) {
			System.out.println("///GCT: " + part.getContentType());
			if (part.getContentType() != null) {
// String fileName = extractFileName(part);
				long t = System.currentTimeMillis();
				int r = (int) (Math.random() * 1000000);
				String fileName = t + r + ".png";
				part.write(savePath + File.separator + fileName);
				/*
				 * lookFile = new File(savePath + File.separator + fileName);
				 * getHeader("content-disposition") byte [] l_image =
				 * FileUtils.readFileToByteArray(lookFile); dto.setL_image(l_image);
				 */
				dto.setL_fileName(fileName);
				dto.setM_id("test");
				dto.setL_open("N");
				dto.setG_nums(request.getParameter("gNums"));
				/* dto.setSize(part.getSize()); */
				result = dao.LookInsert(dto);
				result += ",";
				result += dao.LookDetailInsert(dto);
				//"1,2"와 같은 형태로 성공여부 반환
			}
		}
		return result;
	}

}
