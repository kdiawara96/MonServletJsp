package com.others.ml;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DataBase {
	
	public Connection connection;
	
	
//	Methode permettant d'etablir la connection avec la base de donnée
	public void InitialiseConnection() {
			
	//		Chargement de la librairie mysql connector
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
//		connexion avec la base de données 
		
		try {
			
			this.connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/monserveletjsp", "root", "");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
	}
	
//	La méthode permettant de créer un utlisateur
	
	public void CreerUtilisateur(Personnes user) {
		
		this.InitialiseConnection();
//		variable requette qui envoyera la requette 
		try {
			PreparedStatement requette = this.connection.prepareStatement("INSERT INTO personnes(nom, prenom,pseudo,email,password) VALUES(?, ?,?,?,?);");
        
		
			requette.setString(1, user.getNom());
			requette.setString(2, user.getPrenom());
			requette.setString(3, user.getPseudo());
			requette.setString(4, user.getEmail());
			requette.setString(5, user.getPassword());
			
			requette.executeUpdate();
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
//		Personnes user = new Personnes();
//		
//		
//		
//		return user;
	}
	
	
//	Méthode permettant de retouner la liste des utilisateurs
	
	public List<Personnes> ListUtilisateur(){
		
//		Declaration d'une liste qui recevra la liste
		List<Personnes> utilisateurs = new ArrayList<Personnes>();
		
//		Deux variable requette qui envoyera la requette et resultat qui la recevra
		
		Statement requette=null;
		ResultSet resultat=null;
		
//		se connecter à la base de données
		
		this.InitialiseConnection();
		
		try {
			
			requette = this.connection.createStatement();
			
//			execution de la requette
			resultat = requette.executeQuery("Select nom,prenom,email FROM personnes;");
			
//			recuperation des resultats un à un
			while(resultat.next()) {
				
				Personnes user = new Personnes();
				user.setNom(resultat.getString("nom"));
				user.setPrenom(resultat.getString("prenom"));
				user.setEmail(resultat.getString("email"));
				
				utilisateurs.add(user);
			}
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally{
//			A la fin de la requette on vas ferme la connection
			
			try {
				if(resultat!=null) {
					resultat.close();
				}
				if(requette!=null) {
					requette.close();
				}
				if(this.connection!=null) {
					this.connection.close();
				}
				
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			
		}
		
		return utilisateurs;
	}

//	methode pour la connection d'un utilisateur
	public Personnes login(String pseudo,String password) {
		
//		creation d'un utilisateur qui sera retouner
		Personnes user = null;
		
		
//		Deux variable requette qui envoyera la requette et resultat qui la recevra
		
		this.InitialiseConnection();
		
		try {
			
			PreparedStatement requette = this.connection.prepareStatement("SELECT * FROM personnes WHERE pseudo = ? and password = ?;");
			
			requette.setString(1, pseudo);
			requette.setString(2, password);
	
			ResultSet result = requette.executeQuery();
			
			if (result.next()) {
				user = new Personnes();
				user.setNom(result.getString("nom"));
				user.setPseudo(result.getString("prenom"));
				user.setPseudo(result.getString("pseudo"));
				user.setEmail(result.getString("email"));

			}
			
			result.close();
			requette.close();
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return user;
	}
	
	
}
