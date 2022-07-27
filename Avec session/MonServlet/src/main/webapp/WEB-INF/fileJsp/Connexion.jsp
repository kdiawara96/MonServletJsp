<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 

crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Connexion page</title>
</head>
<body>



<!-- j'ai mis le body dans un grand container et diviser en deux (slide_gauche et slide_droite -->

<div class="container">

	<div class="gauche">
	
		<div class="appName">
		<h1>Orange Digital Center</h1>
		</div>
		
		<div class="connexion_texte">
		 <h1>Connexion</h1>
		</div>
		
		<div class="button">
		       
		   		        
		       
		     <div class="bttG">
		     
		    	      
	       <button  class='google'  style="width: 90px; height: 40px ; background:transparent; border-radius:5px;border:1px solid black; font-weight: bold; color: #a97;"><i class="fa-brands fa-google" style="color: blue ;margin-right:5px;" ></i>Google</button>
 	      
		       </div>
		          
		     <div class="bttF">
		       
		       <button  class='facebook'  style="width: 92px; height: 40px ; background:transparent; border-radius:5px; border:1px solid black; font-weight: bold; color: #29f;"><i class="fa-brands fa-facebook-f" style="color: blue ;margin-right:5px;" ></i>Facebook</button>
		      </div>
		        <div class="bttG">
		         <button  class='github'  style="width: 92px; height: 40px ; background:transparent; border-radius:5px; border:1px solid black; font-weight: bold; color:black;">   <i class="fa-brands fa-github" style="color: black ;margin-right:5px;"></i>GitHub</button>
		        </div>
		        
		    
		</div>
		<!-- MESSAGE D4ERREUR SI LES DONNEES SONT PAS CORRECTES -->
		         <p style="color:red; margin-left: 43%; margin-top:15px;"><%if(request.getAttribute("erreur")!= null){%>
						      	<%=request.getAttribute("erreur")%>
						      <%}%></p>
		    <!-- LES CHAMPS  -->
		        
		       <div class="champ" style="margin-top:28px; margin-left: 18%;">
		       
		         <form action="Monservlet" method="post">
		         
		         
		          <input type="text" name = "pseudo" placeholder = "Entrer votre pseudo" style=" margin-bottom:25px; border:none;
		           border-bottom:1px solid black; width: 85%; outline:none; background-color: #f0f0f0; 
		           height: 35px;padding-left: 5px"> </br>
			       
			       <input type="password" name ="password" placeholder = "Entrer votre mot de passe" style=" margin-bottom:30px; 
			       border:none; border-bottom:1px solid black; width: 85%; outline:none;  background-color: #f0f0f0;
			        height: 35px; padding-left: 5px" ></br>
			      
			       <input type="submit" value="Connexion" id="envoyer" style="width: 85%; border:none;
			        color:black; font-weight:bold; font-size:18px; height: 40px; border-radius: 5px;
			         background: linear-gradient(135deg, #71b7e6, #9b59b6);
			         boder:1px solid black; box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2); ">
		       
		       
		       </form>
		       
			     
		       </div>
		       
		       <div style="margin-left: 10%; margin-top:10px; text-align:center;">
		       <p>Vous n'avez pas de compte?</p>
		       
		     
		       <a href="<%=request.getContextPath()+"/Monservlet2"%>">Inscrivez-vous gratuitement</a>
		       
		       
		       </div>
	</div>
		<div class="droite" >
		 <div style="margin-top:70px; margin-left:50px;">
		    <div>
			<h2 style="color: #037; text-align: center; font-size:20px;">FIRST FREE SCHOOL !</h2>
			</div>
		
			<div>
			<img alt="myImage" src="img/conn.png" width="400px" height="350px" style="margin-left:12%;">
			
			</div>
		 </div>
			
		  
		
		 
	
	</div>
</div>

   


<!-- LE STYLE CSS IS HERE -->


<style type="text/css">

/*  La police de tous le texte */

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
		min-height: 615px;
		background: #fff;
		display: grid;
		grid-template-columns: 1fr 1fr;
		/*box-shadow: 0 35px 55px rgba(0, 0, 0, 0.1);*/

}
.button{
     
     
		position: relative;
		display: grid;
		grid-template-columns: 1fr 1fr 1fr;
		margin-left: 18%;
		margin-top: 5px;
		
}




/* .button .btt .google{
width: 50px;
}
.button .btt .fecebook{
width: 50px;
}
.button .btt .github{
width: 50px;
} */

.container .gauche
{
	    position: relative;
	    background: #fff;
	    padding: 40px;
}

 .button .bbtF .google {
 width: 70px;
 }
 
/*SUBMIT  */
div #envoyer:hover {
background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}


.appName{
			padding: 30px 0px 0px 30px;
			color: orange;
			font-size: 22px;
			text-align: center;
}
.connexion_texte{
			color: #037;
			padding: 10% 0% 0% 30%;
			font-size: 22px;
}



/*Côté droit  */

.container .droite
{
    position: relative;
    background: orange;
    padding: 40px;
    border-radius:10% 0% 0% 10%;
   box-shadow: 0px 0px 5px 5px #ffefd5;
 
}


</style>


</body>
</html>