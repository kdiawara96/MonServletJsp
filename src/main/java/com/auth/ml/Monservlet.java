package com.auth.ml;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.others.ml.DataBase;
import com.others.ml.Personnes;


public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Monservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Connexion.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String pseudo, password;
	
	 pseudo = request.getParameter("pseudo");
	 password = request.getParameter("password");
	 
//	 initialise la base de données
	 
	 DataBase db = new DataBase();
	 
	 
	 Personnes dbResult = db.login(pseudo, password);
	 
	 if(dbResult != null) {
		 this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/home.jsp").forward(request, response);
	 }else {
		 request.setAttribute("erreur","Erreur d'entrer !");
		 this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Connexion.jsp").forward(request, response);
			
	 }
	 
	}

}
