package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SupDAO;
import model.SupDTO;


@WebServlet("/sup_update")
public class sup_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		String img = request.getParameter("img");
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		String func = request.getParameter("func");
		int sort = Integer.parseInt(request.getParameter("sort"));
		int price = Integer.parseInt(request.getParameter("price"));
		String link = request.getParameter("link");

		
		
		SupDTO dto = new SupDTO(seq, img, name, desc, func, sort, price, link);
		SupDAO dao = new SupDAO();
		int row = dao.sup_update(dto);
		
		if(row>0) {
			System.out.println("영양제 수정 완료");
		}else {
			System.out.println("영양제 수정 실패");
		}
		response.sendRedirect("./supupdatetest.jsp");
	}

}
