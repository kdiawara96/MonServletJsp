package com.others.ml;

public class OthersFunction {
	
protected String password;
protected String passwordConfirme;

	public OthersFunction() {
		// TODO Auto-generated constructor stub
	}
	
	// with setting
	public OthersFunction(String password) {
		this.password = password;
	}
	

	
	//password getter and setter
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword() {
		return password;
	}
	///////////////////////////
	
	//passwordConfirme getter and setter
	public void setPasswordConfirme(String passwordConfirme) {
		this.passwordConfirme = passwordConfirme;
	}
	
	public String getPasswordConfirme() {
		return passwordConfirme;
	}
	
	///////////////////////////////
	
	
	
	
	
	//compare password and passwordConfirme
	public String passwordCompare(String password, String passwordConfirme){
		
		String res;
		
		if(password.equals(passwordConfirme)) {
		   res="true";
		}else {
			res="false";
		}
		return res;
	}
}


