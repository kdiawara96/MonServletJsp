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
<title>Insert title here</title>

<link href="/http://localhost:8080/MonServlet/css/bootstrap.css" rel="stylesheet" type="text/css">


</head>

<body>
	<h1 style="text-align: center;">Home Page </h1>
	<h1>Welcome to  ORANGE DIGITAL CENTER</h1>
	 	<h2  style="margin-left: 40%; color: green;">Listes des Personnes chez ODK</h2>
	 	
	 		<%
	 			HttpSession sessions = request.getSession();
		 		List<Personnes> users = (ArrayList<Personnes>) sessions.getAttribute("liste");
		
	 		%>
	<%int i = 0; %>
	
	 <div class="d-flex">
	 <%for(Personnes us : users){ %>
	 	<div class="card">
			<h3> <%i++; %></br></h3>
			<img src="img/cv.jpg" alt="Avatar" style="width:100%; margin-left:0px; margin-right:10px;">
			<div class="container">
			<h4><b><% out.print(us.getNom()+ " " + us.getPrenom()); %></b></h4>
			<p><% out.print(us.getPseudo());%></p>
			</div>
    	</div>
	 <%} %>
  	</div>
	  
	 <style>
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

	<!--  
<style>
.flip-card {
		  background-color: transparent;
		  width: 300px;
		  height: 300px;
		  perspective: 1000px;
}

.flip-card-inner {
		  position: relative;
		  width: 100%;
		  height: 100%;
		  text-align: center;
		  transition: transform 0.6s;
		  transform-style: preserve-3d;
		  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
</style>
 -->
</body>
</html>