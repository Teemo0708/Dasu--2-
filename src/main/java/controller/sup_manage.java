package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;
import model.SupDAO;
import model.SupDTO;


@WebServlet("/sup_manage")
public class sup_manage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SupDAO dao = new SupDAO();
		
		ArrayList<SupDTO> list = dao.sup_showAll();
		
		request.setAttribute("SM", list);
		
		RequestDispatcher rd =  request.getRequestDispatcher("sup_manage.jsp");
		rd.forward(request, response);
	}

}
