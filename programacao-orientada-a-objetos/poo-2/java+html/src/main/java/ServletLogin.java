package src.main.java;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String nome = request.getParameter("txNome");
		String email = request.getParameter("txEmail");
		System.out.println(nome);
		System.out.println(email);
		
		//exemplo geracao resposta
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		pw.println("<h1>Login OK</h1>");
		pw.println("<h1>"+nome+"</h1>");
		pw.println("<h1>"+email+"</h1>");
		
	}

}
