<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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
  padding: 5%;
  padding-right: 15px;
  padding-left: 15px;
  margin: 10%;
  margin-right: auto;
  margin-left: auto;
  border: 3px solid #111;
  margin-bottom: 20px;
   background-color: #e3f2fd;
}
</style>

<body>

<form action="CerrarSesion" method = "get">
  <div class="container-fluid">
   <div class=container>

  <div class="card-body">
    <h1 class="text-center">Cerrando sesión ...</h1>
    <button type="submit" class="btn btn-primary btn-lg btn-block" style="margin: 6% auto 6% auto;">Cerrar Sesion</button> 
  </div>
</div> 
</div>


 
</form>

</body>
</html>