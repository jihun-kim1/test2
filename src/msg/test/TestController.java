package msg.test;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("*.test")
public class TestController extends HttpServlet {

	MemberDAO d = MemberDAO.getInstance();
	MemberDTO t = new MemberDTO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberDTO rs = new MemberDTO();
		try {
			t = d.select("admin");
		}catch(Exception e) {
			e.printStackTrace();
		}
		request.getSession().setAttribute("loginInfo",t);
		request.getRequestDispatcher("support_page.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
