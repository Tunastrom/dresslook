package command.dresslook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.LookDao;
import dto.LookDto;

public class CollectionInsertCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Look이미지 Look테이블로 넘김
		//collection.do 
		LookDto dto = new LookDto();
		dto.set
		
		LookDao dao = new LookDao();
		 
		
		String path="collectionMain.do";
		return path;
	}

}
