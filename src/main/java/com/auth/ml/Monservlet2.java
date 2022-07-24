package com.auth.ml;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.others.ml.DataBase;
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

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom, prenom,pseudo, email,password,passwordConfirme;
		
		nom = request.getParameter("nom");
		prenom = request.getParameter("prenom");
		pseudo = request.getParameter("pseudo");
		email = request.getParameter("email");
		password = request.getParameter("mdp");
		passwordConfirme = request.getParameter("cmdp");
		
		DataBase db = new DataBase();
		
		if(password.equals(passwordConfirme) ) {
		
			Personnes person = new Personnes(nom, prenom, pseudo, email, password);
			db.CreerUtilisateur(person);
			this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/home.jsp").forward(request, response);

		}else {
			
			request.setAttribute("erreur","Erreur d'entrer !");
			this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Inscrire.jsp").forward(request, response);

		}
		
		
		
		
		
	}

}
