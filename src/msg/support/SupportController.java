package msg.support;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@WebServlet("*.sup")
public class SupportController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SupportDAO dao = SupportDAO.getInstance();

		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		String cmd = requestURI.substring(contextPath.length());
		System.out.println(cmd);

		if(cmd.contentEquals("/support/pay.sup")) {
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String donation = request.getParameter("donation");
			
			request.setAttribute("name", name);
			request.setAttribute("phone", phone);
			request.setAttribute("email", email);
			request.setAttribute("donation", donation);

			request.getRequestDispatcher("payApi.jsp").forward(request, response);
		}else if(cmd.contentEquals("/support/paySuccess.sup")) {
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String card_name = request.getParameter("card_name");
			String method_name = request.getParameter("method_name");
			String pg = request.getParameter("pg");
			int donation = Integer.parseInt(request.getParameter("price"));
			String date = request.getParameter("purchased_at");
			Timestamp support_date = Timestamp.valueOf(date);

		
			String receipt_id = request.getParameter("receipt_id");
			SupportDTO dto = new SupportDTO(0,id,name,phone,email,card_name,method_name,pg,donation,support_date,receipt_id,null);
			int result;
			try {
				result = dao.insertSupport(dto);
				System.out.println(result);
				if(result > 0) {
					request.setAttribute("data", result);
					request.getRequestDispatcher("support_form.jsp");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.contentEquals("/support/pay_delete.sup")) {
			String receipt_id = request.getParameter("receipt_id");
			Test.goGetToken();
			String rs = Test.goCancel(receipt_id);
			JsonParser parser = new JsonParser();
			JsonElement data = parser.parse(rs);
			String value = data.getAsJsonObject().get("status").getAsString();
			System.out.println(value);
			int result = 0;
			String msg = "";
			if(value.contentEquals("200")) {
				try {
					result = dao.deleteSupport(receipt_id);
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			if(result > 0) {
				response.sendRedirect("");  // 취소 완료 페이지 이동
			}
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
