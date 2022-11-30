package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.markupDAO;
import model.markupDTO;


@WebServlet("/markup_show")
public class markup_show extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id 받아오기
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		
		markupDTO dto = new markupDTO();
		dto.setMem_id(id);
		
		markupDAO dao = new markupDAO();
		

		
		ArrayList<markupDTO> list = dao.markup_show(dto);
		
		for(int i = 0; i<list.size(); i++) {
			System.out.println(list.get(i).getSup_seq()); 
			System.out.println(list.get(i).getMem_id()); 
		}
		
		System.out.println();
		System.out.println();
		System.out.println();
		
		for( markupDTO mdto : list ) {
			System.out.println(mdto.getSup_seq());
		}
		
		request.setAttribute("ML", list);
		
		RequestDispatcher rd =  request.getRequestDispatcher("bookmark.jsp");
		rd.forward(request, response);
		
		
	}

}
