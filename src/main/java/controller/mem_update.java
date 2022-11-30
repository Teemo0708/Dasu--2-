package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/mem_update")
public class mem_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String joindate = request.getParameter("joindate");
		String type = request.getParameter("type");
		
		
		
		MemberDTO dto = new MemberDTO(id, pw, nick, joindate, type);
		MemberDAO dao = new MemberDAO();
		
		int row = dao.mem_update(dto);
		
		PrintWriter out = response.getWriter();
		
		if(row!=0) {
			System.out.println("회원 정보 수정 성공");
			out.print(id);
			out.print(pw);
			out.print(nick);
			out.print(joindate);
			out.print(type);
			
		}else {
			System.out.println("회원 정보 수정 실패");
		}
	}

}
