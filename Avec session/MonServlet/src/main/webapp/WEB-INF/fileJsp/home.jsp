<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.others.ml.Personnes"%>
<%@page import="java.util.List"%>
<%@page import="com.others.ml.DataBase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>

<!--LOCAL LIEN BOOTSTRAP  -->
<link href="/http://localhost:8080/MonServlet/css/bootstrap.css" rel="stylesheet" type="text/css">
 <!--  LIEN OF FONTAWESOME-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<!--ONE LINE LIEN BOOTSTRAP  -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         

</head>

<body>



<!-- <style>

    .navbar{
      box-shadow:0px 5px 5px 	#777;
    }

</style>
 -->

<nav class="navbar navbar-expand-lg navbar-primary bg-ligth">

     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    
</button>

<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

  <img alt="image" src="img/orange.png" width="60" height="50">
<a class="navbar-brand" href="#" style="   border:1px solid dart;font-size:15px; border-radius: 5px; margin-left:20px; padding:8px;font-weight:bold; color:orange;">

ORANGE DIGITAL CENTER

</a>
       <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
 
  <li class="nav-item" >
          <a class="nav-link" href="">
          <button class="btn btn-outline-success " type="submit"  style="">OD Kalanso</button></a>
  </li>
 
<li class="nav-item" >
      <a class="nav-link" href="">
      <button class="btn btn-outline-secondary " type="submit"  style="">OD Simplon</button></a>
</li>

<li class="nav-item" >
      <a class="nav-link" href="">
      <button class="btn btn-outline-primary" type="submit"  style="">O FabLab</button></a>
</li>

    </ul>
    
    <form class="form-inline my-2 my-lg-0"  action="Monservlet" method="get">
    
      <!-- <input class="form-control mr-sm-2" type="search" placeholder="Recherche" aria-label="Search"> -->
      <button class="btn btn-outline-danger my-2 my-sm-0 " type="submit">
     	 Deconnexion
      </button>
      
    </form>
  </div>
</nav>




	
	 <!-- 	<h2  style="text-align: center; color: green;">POSTULANTS</h2>
	 	 -->
	 <%
	 
	   HttpSession sessions = request.getSession();
		List<Personnes> users = (ArrayList<Personnes>) sessions.getAttribute("liste");
		
	 %>
	<%int i = 0; %>
	
	 <div class="d-flex">
		
	   <%for(Personnes us : users){ %>
	   
	 	<div class="card">
	 	
	 	
	 	  <P style="text-align:center; margin-top:20px; font-weight: bold;s">
	 	       Bienvenu chez Orange
	 	  </P>
			  <img src="img/cv.jpg" alt="Avatar" style="width:100%; margin-left:0px; margin-right:10px;">
			<div class="container">
			
			<h4>
			   <b>
			      </i> <% out.print(us.getNom()+ " " + us.getPrenom()); %>
			   </b>
			</h4>
			<p> <% out.print(us.getEmail());%></p>
			
			</div>
			
    	</div>
	    <%} %>
  	</div>
	  
	  
	  
	  <!--STYLE OF CSS TAGS  -->
	  
	 <style>
	 
	 
/* 	.nav-link{
		font-size:15px;
		border-radius:50px; 
		box-shadow:0px 7px 5px 	#777;
}  */
	 
	     .navbar{
      box-shadow:0px 5px 5px 	#777;
    }
	 
	 .d-flex{
	 	display: flex;
	 	flex-wrap: wrap;
	 }
	 
	 	.card {
		    width: calc((100% / 4) - 32px);
		    margin: 16px;
		    height: 13%;
		    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);
		    transition: 0.3s;
		}

/* On mouse-over, add a deeper shadow */
 .card:hover {
		  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
     }

/* Add some padding inside the card container */
.container {
  		padding: 2px 16px;
}


	 
	 </style>


</body>
</html>