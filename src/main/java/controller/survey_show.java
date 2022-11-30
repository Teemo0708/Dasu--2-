package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SurveyDAO;
import model.SurveyDTO;

@WebServlet("/survey_show")
public class survey_show extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String data1 = request.getParameter("data1");
		String[] test = data1.split(",");
		
		String data2 = request.getParameter("data2");
		String[] test2 = data2.split(",");

		
		SurveyDAO dao = new SurveyDAO();
		
		
		ArrayList<SurveyDTO> list =dao.survey_show();
		
		request.setAttribute("SL", list);
		request.setAttribute("D3", test2);
		request.setAttribute("D2", test);
		
		RequestDispatcher rd =  request.getRequestDispatcher("test2.jsp");
		rd.forward(request, response);
	}

}