package command.dresslook;

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
		int WriteORnot = Integer.parseInt(request.getParameter("WriteORnot"));
		String path=null;
		if (WriteORnot == 1) {
			path="collectionMain.do";
		} else if (WriteORnot == 2) {
			path="boardLook.do";
		}
		return path;
	}

}