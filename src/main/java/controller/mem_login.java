package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import model.MemberDAO;
import model.MemberDTO;


@WebServlet("/mem_login")
public class mem_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session =  request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String url = request.getParameter("url");
		
		System.out.println(url);
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(id);
		dto.setMem_pw(pw);
		
		
		MemberDAO dao = new MemberDAO();
		
		dto = dao.mem_login(dto);
		
		if(dto!=null) {
			System.out.println("로그인 성공");
			session.setAttribute("user", dto);
			/*
			 * session.setAttribute("ID", dto.getMem_id()); session.setAttribute("Nick",
			 * dto.getMem_nick()); session.setAttribute("Joindate", dto.getMem_joindate());
			 * session.setAttribute("Typesss", dto.getMem_type());
			 */
			
		}else {
			session.setAttribute("user", null);
			System.out.println("로그인 실패");
		}

			response.sendRedirect(url);
	}

}
