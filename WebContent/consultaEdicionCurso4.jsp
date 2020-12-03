<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="publicadores.DtEdicionDetalle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <base target="_top">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
<title>Insert title here</title>
<%@include file="/header.jsp" %>
</head>
<%
//String[] listaDocentes;
//listaDocentes = (String[])request.getAttribute("DocentesEdicionSeleccionada");
String dtEdicion = (String)request.getAttribute("DatosEdicionSeleccionada");

%>

<style>

body {
  background-image: url("img/2.jpg");
  font-family: Arial, Helvetica, sans-serif;
  font-size: 250%;
}

hr {
  border: 1px solid #111;
  margin-bottom: 25px;
}

.container {
  width: 100vw;
  height: 45vh ;
  padding: 5%;
  padding-right: 15px;
  padding-left: 15px;
  margin: 30%;
  margin-right: auto;
  margin-left: auto;
  border: 3px solid #111;
  margin-bottom: 20px;
  background-color: #e3f2fd;
}

hr {
  border: 1px solid #111;
  margin-bottom: 25px;
}

</style>


<body>
	<div class="container-fluid">
		<div class="container">  
			<div class="input-group">
				<div class="col-sm-12">
			  		<div class="input-group-prepend">
			       		<span class="input-group-text" style="  font-size: 100%; background-color: #e3f2fd; border: 0px">Información de edición de curso</span>
			       	</div>
			       	<div class="col-sm-12">
			     	<hr>
			     	</div>
			     		<textarea class="form-control" aria-label="With textarea" style="height : 32vh; width : 100%;   padding: 5%;   font-size: 100%; background-color: #e3f2fd;   border: 0px;" readonly><%=dtEdicion%></textarea>	
		     	</div>
	     	</div>
	     </div>
	</div>

</body>
</html>