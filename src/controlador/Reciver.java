package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reciver
 */
@WebServlet("/reciver")
public class Reciver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reciver() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String user = request.getParameter("usuario");
		String pass = request.getParameter("password");
		
		
		if (user.toUpperCase().equals("ADMIN") && pass.equals("admin")) {
			request.setAttribute("usuario", user);
			request.setAttribute("password", pass);
			request.setAttribute("error", "false");
		
		request.getRequestDispatcher("postDatos.jsp").forward(request, response);
	}else {
		request.setAttribute("error", "true");
			request.getRequestDispatcher("postForm.jsp").forward(request, response);
		}
		
	}

}
