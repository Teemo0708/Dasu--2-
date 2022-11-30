package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SupDAO;
import model.SupDTO;


@WebServlet("/sup_show")
public class sup_show extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		SupDTO dto = new SupDTO();
		dto.setSup_seq(seq);
		SupDAO dao = new SupDAO();
		SupDTO sdto = dao.sup_show(dto);
		
		PrintWriter out = response.getWriter();
		
		
		
		if(sdto!=null) {
			
			System.out.println(sdto.getSup_seq());
			System.out.println(sdto.getSup_name());
			System.out.println(sdto.getSup_description());
			System.out.println(sdto.getSup_price());
			System.out.println(sdto.getSup_link());
			System.out.println(sdto.getSup_img());
			
			out.print(sdto.getSup_seq()+"<br>");
			out.print(sdto.getSup_name()+"<br>");
			out.print(sdto.getSup_description()+"<br>");
			out.print(sdto.getSup_price()+"<br>");
			out.print(sdto.getSup_link()+"<br>");
			out.print(sdto.getSup_img()+"<br>");
		}else {
			out.print("영양제 출력 오류");
		}
	}

}
