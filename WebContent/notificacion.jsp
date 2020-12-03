<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/header.jsp" %>
	<meta charset="UTF-8">
	<title>Ventana de Notificacion</title>
</head>

<style>

body {
  font-size: 250%;
  background-image: url("img/2.jpg");
  font-family: Arial, Helvetica, sans-serif;
}

.container {
  background-color: #white;
  padding: 5%;
  padding-right: 15px;
  padding-left: 15px;
  margin: 50%;
  margin-right: auto;
  margin-left: auto;
  border: 3px solid #111;
  max-width: 90%;
  margin-bottom: 20px;
  background-color: #e3f2fd;
}

</style>
<body>
	<div class="container-fluid">
		<div class="container">  	
			<h1>${mensaje}</h1>
		</div>
	</div>
	
<%@include file="/footer.jsp" %>
</body>
</html>