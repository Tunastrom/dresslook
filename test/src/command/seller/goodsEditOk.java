package command.seller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;

public class goodsEditOk implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		GoodsDao dao = new GoodsDao();
		GoodsDto dto = new GoodsDto();
		
		return null;
	}
	

}
