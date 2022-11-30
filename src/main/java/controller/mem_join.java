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


@WebServlet("/mem_join")
public class mem_join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String cpw = request.getParameter("cpw");
		String nick = request.getParameter("nick");
		
		PrintWriter out = response.getWriter();
		
		if(pw.equals(cpw)) {
			MemberDTO dto = new MemberDTO();
			dto.setMem_id(id);
			dto.setMem_pw(pw);
			dto.setMem_nick(nick);
			MemberDAO dao = new MemberDAO();
			
			int row = dao.mem_join(dto);
			
			if(row>0) {
				System.out.println("회원가입 성공");
				response.sendRedirect("./index.jsp");
			}else {
				System.out.println("회원 가입 실패");
				response.sendRedirect("./join.jsp");
			}
		}else {
			System.out.println("비밀번호 확인해주세요");
			out.print("비밀번호를 확인해주세요");
		}
		
		
	}

}
