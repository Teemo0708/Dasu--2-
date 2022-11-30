package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SupDAO;
import model.SupDTO;


@WebServlet("/sup_insert")
public class sup_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		int price = Integer.parseInt(request.getParameter("price"));
		String link = request.getParameter("link");
		String img = request.getParameter("img");
		int sort = Integer.parseInt(request.getParameter("sort"));
		
		SupDTO dto = new SupDTO();
		
		dto.setSup_name(name);
		dto.setSup_description(desc);
		dto.setSup_price(price);
		dto.setSup_link(link);
		dto.setSup_img(img);
		dto.setSup_sort(sort);
		
		SupDAO dao = new SupDAO();
		
		int row = dao.sup_insert(dto);
		
		if(row>0) {
			System.out.println("영양제 삽입 성공");
		}else {
			System.out.println("영양제 삽입 실패");
		}
		response.sendRedirect("./supinserttest.jsp");
		
	}

}
