package com.auth.ml;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.others.ml.DataBase;
import com.others.ml.OthersFunction;
import com.others.ml.Personnes;

/**
 * Servlet implementation class Monservlet2
 */
public class Monservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Monservlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Inscrire.jsp").forward(request, response);
		
//     session.invalidate();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nom, prenom,pseudo , email,password,passwordConfirme;
		
		
		HttpSession session = request.getSession();
		
		List<Personnes> list = (ArrayList<Personnes>) session.getAttribute("liste");
//		if a user exist the list not create 
//		si le user existe il va plus le créer
		
		if(session.getAttribute("liste") == null)
			list = new ArrayList<>();
		
		
		nom = request.getParameter("nom");
		prenom = request.getParameter("prenom");
		pseudo = request.getParameter("pseudo");
		email = request.getParameter("email");
		password = request.getParameter("mdp");
		passwordConfirme = request.getParameter("cmdp");
		

		
		//call the function passwordCompare in othersFunction
		
//		OthersFunction other = new OthersFunction();
//		passwordCompare(password, passwordConfirme);
//		
//		System.out.println(other);
		System.out.println(nom +" value:"+prenom+"email:"+email);
//
	
			
		
if(password.equals(passwordConfirme)) {
				
				
				Personnes u = new Personnes(nom, prenom,pseudo, email,password);
				
				list.add(u);
				
				session.setAttribute("user", u);
				
				session.setAttribute("liste", list);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/home.jsp").forward(request, response);
				
				
			}else {
				String message = "error, PASSWORD and PASSWORDCONFIRME is not equals! ";
				
				session.setAttribute("error", message);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Inscrire.jsp").forward(request,response);
				
			}
			
	
		
	}

}
