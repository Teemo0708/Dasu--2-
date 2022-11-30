package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/mem_login_sup")
public class mem_login_sup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		HttpSession session =  request.getSession();
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(id);
		dto.setMem_pw(pw);
		
		MemberDAO dao = new MemberDAO();
		
		dto = dao.mem_login(dto);
		
		if(dao!=null) {
			System.out.println("로그인 성공");
			session.setAttribute("user", dto);
			/*
			 * session.setAttribute("ID", dto.getMem_id()); session.setAttribute("Nick",
			 * dto.getMem_nick()); session.setAttribute("Joindate", dto.getMem_joindate());
			 * session.setAttribute("Typesss", dto.getMem_type());
			 */

		}else {
			System.out.println("로그인 실패");
		}response.sendRedirect("supplements.jsp");
		
	}

}
