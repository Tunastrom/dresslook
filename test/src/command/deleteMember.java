package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

@WebServlet("/deleteMember.do")
public class deleteMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public deleteMember() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
        String context = request.getContextPath();
        int num = (request.getParameter("num")!=null)?Integer.parseInt(request.getParameter("num")):-1;
        if(num<0){
            System.out.println("잘못된 접근");
            response.sendRedirect(context+"/index.jsp");
        }else{
            MemberDao dao = MemberDao.getInstance();
            int delete = dao.delete(num);
            if(delete>0){
                System.out.println("삭제 성공");
                response.sendRedirect(context+"/memberlist.do");
            }else{
                System.out.println("삭제 실패");
                response.sendRedirect(context+"/index.jsp");
            }
        }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
