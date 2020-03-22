package command.dresslook;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import command.Command;

public class OrderInsertCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Look이미지 Look테이블로 넘김
		//collection.do 또는 boardLook.do 연결 
		String WriteOrnot = request.getParameter("WriteORnot");
		int pageSelect = 0;
		if (WriteOrnot != null) {
			pageSelect = Integer.parseInt(WriteOrnot);
		}
		String path=null;
		if (pageSelect == 1) {
			path="collectionMain.do";
		} else if (pageSelect == 2) {
			path="orderSheet.do";
		} else if (pageSelect == 3) {
			path="boardLook.do";
		} else path="HTML/YCW/LooksInsert.jsp";
		return path;
	}

}
