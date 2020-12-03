<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consulta de Curso</title>
<%@include file="/header.jsp" %>
   <base target="_top">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
</head>
<style>

body {
  background-image: url("img/2.jpg");
    font-size: 230%;
}

hr {
  border: 1px solid #111;
  margin-bottom: 25px;
}

.container {
  padding: 5%;
  padding-right: 15px;
  padding-left: 15px;
  margin: 50%;
  margin-right: auto;
  margin-left: auto;
  border: 3px solid #111;
  margin-bottom: 20px;
  background-color: #e3f2fd;
}
 
select{
    text-align-last:left;
    padding-left: 20px;
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

</style>

<body>
<form action="ConsultaInstCat" method="post">

<div class="container-fluid">
	<div class="container">  
	<h1 class="text-center">Consulta de curso</h1><hr>
		<input type="hidden" name="boton" id="boton" value="">
		<div class="form-group">
			<div class="col-sm-12">
	      		<label for="inputDato">Nombre de Instituto o de Categoria: </label>
	      	</div>
 			<div class="col-sm-12">
	      		<input type="text" name="Dato" class="form-control" id="inputDato">
	      	</div>
    	</div>
   		<div class="col-sm-12">
		  <button type="button" class="btn btn-primary btn-lg" onclick="procesar('instituto')" style="padding: 4%;">Consultar Instituto</button>
		  <button type="button" class="btn btn-primary btn-lg" onclick="procesar('categoria')" style="padding: 4%;">Consultar Categoria</button>
		</div>
    </div>
</div>

</form>

	<script type="text/javascript">
		function procesar(tipo) {
			document.getElementById("boton").value = tipo;
			document.forms[0].submit();
		}
	</script>

	<%@include file="/footer.jsp" %>
</body>
</html>