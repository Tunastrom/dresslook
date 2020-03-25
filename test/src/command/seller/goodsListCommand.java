package command.seller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.GoodsDao;
import dto.GoodsDto;
import dto.GoodsImageDto;
import net.sf.json.JSONArray;

public class goodsListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		String sid = request.getParameter("s_id");
		String g_nums = null;
		System.out.println("no: " + sid);
		GoodsDao dao = new GoodsDao();
		
		List<GoodsDto> list1 = null;
		list1 = dao.SellerGoodsList(sid);
		String list1JS = null;
		list1JS = JSONArray.fromObject(list1).toString();
		
		List<GoodsImageDto> list2 = dao.SellerGIlist(g_nums);
		String list2JS = null;
		list2JS = JSONArray.fromObject(list2).toString();
		return "ajax:" + list1JS + list2JS;
	}
}