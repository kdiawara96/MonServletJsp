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
		
//		la function trim permet d'enlever les espaces sur la chaine de caractère appliquer
		
		nom = request.getParameter("nom").trim();
		prenom = request.getParameter("prenom").trim();
		pseudo = request.getParameter("pseudo").trim();
		email = request.getParameter("email").trim();
		password = request.getParameter("mdp").trim();
		passwordConfirme = request.getParameter("cmdp").trim();
		

		
		//call the function passwordCompare in othersFunction
		
//		OthersFunction other = new OthersFunction();
//		passwordCompare(password, passwordConfirme);
//		
//		System.out.println(other);
//
//		nom.trim();
//		prenom.trim();
//		pseudo.trim();
//		email.trim();
//		password.trim();
		
			if(!nom.equals("") && !prenom.equals("") && !pseudo.equals("") && !email.equals("") && !password.equals("")) {
		
     if(password.equals(passwordConfirme) && password.length() >7) {
				
				
				Personnes u = new Personnes(nom, prenom,pseudo, email,password);
				
				list.add(u);
				
				session.setAttribute("user", u);
				
				session.setAttribute("liste", list);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/home.jsp").forward(request, response);
				
				
			}else {
				String message = "error, PASS and PASS_Confi is not equals! ";
				
				request.setAttribute("error", message);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Inscrire.jsp").forward(request,response);
				
	}
     
			}else {
		
				 String message = "error, un ou plusieurs CAMPS sont vide! ";
				
				request.setAttribute("error", message);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/fileJsp/Inscrire.jsp").forward(request,response);
				
			}
	}

}
