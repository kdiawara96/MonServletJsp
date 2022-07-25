package com.others.ml;

public class Personnes {
	
protected String nom;
protected String prenom;
protected String pseudo;
protected String email;
protected String password;

public Personnes() {
	
}
public Personnes(String nom, String prenom, String pseudo, String email, String password ) {
	this.nom = nom;
	this.prenom = prenom;
	this.pseudo = pseudo;
	this.email = email;
	this.password = password;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getPrenom() {
	return prenom;
}
public void setPrenom(String prenom) {
	this.prenom = prenom;
}
public String getPseudo() {
	return pseudo;
}
public void setPseudo(String pseudo) {
	this.pseudo = pseudo;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

//public ArrayList<String> add(String value) {
//	
//	ArrayList<String> user = new ArrayList<>();
//	user.add(value);
//	
//	return user;
//}

}
