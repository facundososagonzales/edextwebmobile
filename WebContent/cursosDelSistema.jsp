<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="publicadores.DtCursoBase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cursos encontrados en el Sistema</title>
<%@include file="/header.jsp" %>
   <base target="_top">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
</head>
<style>

body {
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
  margin: 5%;
  margin-right: auto;
  margin-left: auto;
  margin-bottom: 20px;
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
	
	<%
		String mostrar = (String) request.getAttribute("mostrar");
		String dato = (String) request.getAttribute("Dato");
		if (mostrar.equals("instituto")) {
			ArrayList<publicadores.DtCursoBase> cursos = (ArrayList<publicadores.DtCursoBase>) request.getAttribute("cursos");
	%>

	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Curso</th>
	      <th scope="col">Descripcion</th>
	    </tr>
	  </thead>
	  <tbody>
	  <%
				int i = 1;
					for (publicadores.DtCursoBase dt : cursos) {
			%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><%=dt.getNombre()%></td>
	      <td><%=dt.getDescripcion()%></td>
	    </tr>
	    <% i++;
	    } %>
	  </tbody>
	</table>
	
		<form action="InformacionCurso" method="post">
	<!--<form>  -->
	
	<input type="hidden" name="NomInstituto" value="<%=dato%>">
	
<div class="container-fluid">
	<div class="container">  
		<div class="form-group">
			<div class="col-sm-12">
		        <label for="inputNomCur">Ingrese nombre del Curso a consultar </label>
		        <input type="text" name="NomCur" class="form-control" id="inputNomCur">
    		</div>
   		</div>
		<div class="col-sm-12">
   		   <button type="submit" class="btn btn-primary btn-lg btn-block" style="padding: 4%;">Consultar</button>
		</div>
   	</div>
</div>

	<%@include file="/footer.jsp" %>
	</form>

	<% } else if (mostrar.equals("categoria")) {
		ArrayList<publicadores.DtCursoBase> cursos = (ArrayList<publicadores.DtCursoBase>) request.getAttribute("cursos");
	%>

	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Categoria</th>
	      <th scope="col">Descripcion</th>
	    </tr>
	  </thead>
	  <tbody>
	  <%
				int i = 1;
					for (publicadores.DtCursoBase dt : cursos) {
			%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><%=dt.getNombre()%></td>
	      <td><%=dt.getDescripcion()%></td>
	    </tr>
	    <%} %>
	  </tbody>
	</table>

	<form action="InformacionCurso1" method="post">
	<!--<form>  -->
	<input type="hidden" name="NomCategoria" value="<%=dato%>">


<div class="container-fluid">
	<div class="container">  
		<div class="form-group">
			<div class="col-sm-12">
      			<label for="inputNomCur">Ingrese nombre del Curso a consultar </label>	
      			<input type="text" name="NomCur" class="form-control" id="inputNomCur">
    		</div>
   		</div>
		<div class="col-sm-12">
   		   <button type="submit" class="btn btn-primary btn-lg btn-block" style="padding: 4%;">Consultar</button>
		</div>
   	</div>
</div>

	<%@include file="/footer.jsp" %>
	</form>

	<%
		}
	%>

	
</body>
</html>