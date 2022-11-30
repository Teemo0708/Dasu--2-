package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;
import model.markupDAO;
import model.markupDTO;


@WebServlet("/markup_insert")
public class markup_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mem_id = request.getParameter("id");
		int sup_seq = Integer.parseInt(request.getParameter("seq"));
		String url = request.getParameter("url");
		
		markupDTO dto = new markupDTO();
		dto.setMem_id(mem_id);
		dto.setSup_seq(sup_seq);
		markupDAO dao = new markupDAO();
		
		int row = dao.markup_insert(dto);
		
		if(row>0) {
			System.out.println("추가 성공");
		}else {
			System.out.println("추가 실패");
		}
		response.sendRedirect(url);
	}

}
