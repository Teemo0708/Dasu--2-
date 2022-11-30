package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.markupDAO;
import model.markupDTO;

@WebServlet("/markup_delete")
public class markup_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int seq = Integer.parseInt(request.getParameter("seq"));
		String id = request.getParameter("id");
		String url = request.getParameter("url");
		
		markupDTO dto = new markupDTO();
		dto.setSup_seq(seq);
		dto.setMem_id(id);
		
		markupDAO dao = new markupDAO();
		
		int row = dao.markup_delete(dto);
		
		
		if(row>0) {
			System.out.println("삭제성공");
			/* request.setAttribute("MI", dto.getMem_id()); */
			
		}else {
			System.out.println("삭제실패");
		}
		
		/* response.sendRedirect(url); */

		 RequestDispatcher rd = request.getRequestDispatcher(url); rd.forward(request,
		 response);

	}

}
