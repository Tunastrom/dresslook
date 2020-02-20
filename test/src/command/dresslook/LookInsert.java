package command.dresslook;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import command.Command;

public class LookInsert implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Look이미지 Look테이블로 넘김
		//collection.do 또는 boardLook.do 연결 
		int pageSelect = Integer.parseInt(request.getParameter("WriteORnot"));
		String path=null;
		if (pageSelect == 1) {
			path="collectionMain.do";
		} else if (pageSelect == 2) {
			path="orderSheet.do";
		} else if (pageSelect == 3) {
			path="boardLook.do";
		}
		return path;
	}

}
