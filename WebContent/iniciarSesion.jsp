<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<%@include file="/header.jsp" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>

body {
  font-size: 250%;
  background-image: url("img/2.jpg");
  font-family: Arial, Helvetica, sans-serif;
  
}

input[type=text], input[type=password] {
  width: 100%;
  height: 25% ;
  padding: 14px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  font-size: 100%;
}

hr {
  border: 1px solid #111;
  margin-bottom: 25px;
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

<title>Insert title here</title>
</head>
<body>
<form action="IniciarSesion" method = "post">

<div class="container-fluid">
<div class="container">  
	  <h1 class="text-center">Inicio de sesión</h1>
      <p class="text-center">Completar el formulario para iniciar sesión.</p>
      <hr>
	    <div class="form-group col-sm-auto">
	  	  <label for="usuario">Nick</label>
	  	  <input type="text" name="nick" class="form-control form-control-lg" id="nick">
		  <label for="pwd">Contrasena</label>
		  <input type="password" name="pwd" class="form-control form-control-lg" id="pwd">
	   </div>
	   <div class="form-group col-sm-12">
	     <button type="submit" class="btn btn-primary btn-lg btn-block" style="padding: 4%;   margin: 6% auto 6% auto;">Ingresar</button> 
	   </div>
	 </div>
 </div>
</form>
<%@include file="/footer.jsp" %>
</body>

</html>