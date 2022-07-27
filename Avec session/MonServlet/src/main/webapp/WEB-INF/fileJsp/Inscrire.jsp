<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Inscription page</title>
</head>
<body>
<div class="container">
	<div class="droite">
	    <div class="inscrire_texte">
			<h1>Inscription</h1>
			
			<c:if>
			<h5 style="color: red; font-size:13px;">${sessionScope.error}</h5>
			</c:if>
			
				</div>
					<form action="Monservlet2" method="post">
						           
						   <input type="text" name ="nom" placeholder = "Entrer votre nom" style=" margin-bottom:25px; border:none;
								 border-bottom:1px solid black; width: 85%;   margin-top:20px;   outline:none; background-color: #f0f0f0;
								 height: 35px;padding-left: 5px" required > </br>
										      
					       <input type="text" name ="prenom" placeholder = "Entrer votre prénom" style=" margin-bottom:30px; border:none;
				         		  border-bottom:1px solid black; width: 85%; outline:none;  background-color: #f0f0f0; height: 35px;
								  padding-left: 5px" required  ></br>
										        
						   <input type="text" name = "pseudo" placeholder = "Entrer votre pseudo" style=" margin-bottom:25px; border:none;
						        border-bottom:1px solid black; width: 85%; outline:none;
						        background-color: #f0f0f0; height: 35px;padding-left: 5px" required > </br>
										       
			                <input type="email" name ="email" placeholder = "Entrer votre E-mail" style=" margin-bottom:30px; border:none;
							     border-bottom:1px solid black; width: 85%; outline:none;  background-color: #f0f0f0; height: 35px;
								 padding-left: 5px"  required ></br>
										      
							<input type="password" name = "mdp" placeholder = "Entrer votre mot de passe " style=" margin-bottom:25px; 
								 border:none; border-bottom:1px solid black; width: 85%; outline:none; background-color: #f0f0f0; 
								 height: 35px;padding-left: 5px" minlength="8"  > </br>
										       
							 <input type="password" name ="cmdp" placeholder = "Confirmez votre mot de passe" style=" margin-bottom:30px; border:none;
								  border-bottom:1px solid black; width: 85%; outline:none;  background-color: #f0f0f0; height: 35px; 
								  padding-left: 5px"></br>
										    
							 <input type="submit" value="Enregistrer" name="enregistrer" id="envoyer" style="width: 85%;
								  color:black; border:none; font-weight:bold; font-size:18px; height: 40px; border-radius: 5px; 
								  background: linear-gradient(135deg, #71b7e6, #9b59b6);  box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2); ">
									       
									       <!-- VOUS AVEZ DEJA UN COMPTE  -->
									       
									       
										         <div style=" margin-right:20%; margin-top:10px; text-align:center;">
										         
													       <p>Vous avez déjà un compte?</p>
													       
													     
													       <a href="<%=request.getContextPath()+"/Monservlet"%>">Connectez-vous!</a>
													      
										       <!--  FIN DEJA UN COMPTE-->
										       
										       </div>
						       
		       
						       </form>
						       
						      
		 </div>
						      
			
	<!--                      Start Slid of left                   -->
	
		 <div class="gauche">
			 <div style="margin-top:70px; margin-left:50px;">
				 <div>
						<h2 style="color: #037; text-align: center; font-size:20px;">FIRST FREE SCHOOL !</h2>
				</div>
					
				<div>
					<img alt="myImage" src="img/inscrire.png" width="400px" height="350px" style="margin-left:12%;">		
			   </div>
			  </div>
			
	 </div>
			
			
			
		<style  type="text/css">
		
		@import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');
			
						*{
				font-family: 'Poppins', sans-serif;
				margin: 0px;
				padding: 0px;
				box-sizing: boder-box;
							
						}
			
			
			
			body{
						background-color: #fff;
						/* La propriété flex est une propriété raccourcie qui
						 définit la capacité d'un élément flexible à modifier ses 
						 dimensions afin de remplir l'espace disponible de son conteneur. */
						display: flex;
						justify-content: center;
						align-items: center;
						min-height: 100vh;
						
			}
			
			.container
			{
					position: relative;
					width: 100%;
					min-height: 570px;
					background: #fff;
					display: grid;
					grid-template-columns: 1fr 1fr;
					/*box-shadow: 0 35px 55px rgba(0, 0, 0, 0.1);*/
			
			}
					
			.container .gauche
			{
				    position: relative;
				    background: orange;
				    padding: 40px;
				      border-radius:10% 0% 0% 10%;
			}
			
			.container .droite
			{
			    position: relative;
			    background: #fff;
			    padding: 40px;
			    padding-left: 60px;
			}
			
			
			.inscrire_texte{
			color: #037;
			padding: 0% 0% 0% 15%;
			font-size: 22px;
}
			


        </style>
</body>
</html>