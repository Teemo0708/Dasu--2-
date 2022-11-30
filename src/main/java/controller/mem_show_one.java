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

@WebServlet("/mem_show_one")
public class mem_show_one extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(id);
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO mdto = dao.mem_show(dto);
		
		PrintWriter out = response.getWriter();
		
		if(mdto!=null) {
			System.out.println(mdto.getMem_id());
			System.out.println(mdto.getMem_nick());
			System.out.println(mdto.getMem_nick());
			System.out.println(mdto.getMem_joindate());
			System.out.println(mdto.getMem_type());
		}else {
			System.out.println("사용자 정보 출력 실패");
		}
	}

}
