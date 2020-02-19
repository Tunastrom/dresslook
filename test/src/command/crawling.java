package command;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import dao.MemberDao;
import dto.MemberDto; 
public class crawling implements Command{ 
	public static void main(String[] args) throws Exception{ 
		String url = "https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no=355814383971"; 
		Document doc = Jsoup.connect(url).get();
		Elements ele = doc.select("table.ptb10"); 
		String str = ele.text(); 
		System.out.println(ele);
	

		}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	MemberDao dao = new MemberDao();
	MemberDto dto= new MemberDto();
	dto.setTrack(request.getParameter("track"));
	String url = "https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no=355814383971";
	Document doc = Jsoup.connect(url).get();
	Elements ele = doc.select("table.ptb10");
	
	
	//돌려줄 페이지 선택
	 return "ajax: "+ele;
	} 

	}

 
