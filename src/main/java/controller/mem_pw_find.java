package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/mem_pw_find")
public class mem_pw_find extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String url = request.getParameter("url");
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(id);
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO fdto = dao.mem_show(dto);
		
		if(fdto!=null) {
			String pw = fdto.getMem_pw();
			request.setAttribute("pw", pw);
		}
		response.sendRedirect(url);
	}

}
