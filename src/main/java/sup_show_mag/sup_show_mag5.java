package sup_show_mag;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDTO;
import model.SupDAO;
import model.SupDTO;
import model.markupDAO;
import model.markupDTO;

@WebServlet("/sup_show_mag5")
public class sup_show_mag5 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SupDAO dao = new SupDAO();
		
		ArrayList<SupDTO> list = dao.sup_showMag(); 
		
		HttpSession session =  request.getSession();
		
		MemberDTO mdto = (MemberDTO)session.getAttribute("user");
		if(mdto!=null) {
		String id = mdto.getMem_id();
		 System.out.println(id);
		
		markupDTO bdto = new markupDTO();
		bdto.setMem_id(id);
		
		markupDAO mdao = new markupDAO();

		ArrayList<markupDTO> list2 = mdao.markup_show(bdto); 
		request.setAttribute("ML", list2);
		}
		
		request.setAttribute("SM", list);
		
		RequestDispatcher rd =  request.getRequestDispatcher("sup_mag5.jsp");
		rd.forward(request, response);
	}

}
