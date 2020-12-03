<%@page import="org.apache.axis.utils.ArrayUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="publicadores.Time"%>
<%@page import="publicadores.DtInfoProgCurso"%>
<%@page import="publicadores.DtCursoDetalle1"%>
<%@page import="publicadores.DtEdicionBasico"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Informacion de Curso</title>
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
		String dato = (String) request.getAttribute("Dato");
		String nomCurso = (String) request.getAttribute("NomCurso");
		publicadores.DtInfoProgCurso dt = (publicadores.DtInfoProgCurso) request.getAttribute("Curso");
		
		publicadores.DtCursoDetalle1 dtE = dt.getDt();
		String nomCur = dtE.getNombre();
		String desc = dtE.getDescripcion();
		String dur = dtE.getDuracion();
		Time cantH = dtE.getCantHoras();
		String horas = cantH.toString();
		int creditos = dtE.getCreditos();
		String url = dtE.getUrl();
		String[] previas = dtE.getPrevias();
		DtEdicionBasico[] ediciones = dtE.getEdiciones();
		String[] categorias = dtE.getCategorias();
		
		
		String text = dt.getTexto();
	%>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Curso </th>
				<th scope="col">Descripcion </th>
				<th scope="col">Duracion </th>
				<th scope="col">Creditos </th>
				<th scope="col">url </th>
			</tr>
		</thead>
		<tbody>
		
			<tr>
				<td><%=nomCur%></td>
				<td><%=desc%></td>
				<td><%=dur%></td>
				<td><%=creditos%></td>
				<td><%=url%></td>
			</tr>
		</tbody>
	</table>
	
	<% if(!(previas==null)){ %>	
	<table class="table table-striped" style="  margin: 5%;   margin-right: auto;
  margin-left: auto;">
		<thead>
			<tr>
				<th scope="col"> # </th>
				<th scope="col">Nombre Previa </th>
			</tr>
		</thead>
		<tbody>
		 <%
					for (int x =0; x < previas.length;  ++x) {
			%>
	    <tr>
	      <td><%=x+1%></td>
	      <td><%=previas[x]%></td>
	    </tr>
	    <% ;
	    } %>
		</tbody>
	</table>
	<%}
	if(!(ediciones==null)){
	%>
	<table class="table table-striped" style="  margin: 5%;   margin-right: auto;
  margin-left: auto;">
		<thead>
			<tr>
				<th scope="col"> # </th>
				<th scope="col">Nombre Edicion </th>
			</tr>
		</thead>
		<tbody>
		 <%
			
					for (int x =0; x < ediciones.length;  ++x) {
			%>
	    <tr>
	      <td><%=x+1%></td>
	      <td><%=ediciones[x].getNombre()%></td>
	    </tr>
	    <% ;
	    } %>
		</tbody>
	</table>
	<%}
	if(!(categorias==null)){ %>
	<table class="table table-striped" style="  margin: 5%;   margin-right: auto;
  margin-left: auto;">
		<thead>
			<tr>
				<th scope="col"> # </th>
				<th scope="col">Categorias </th>
			</tr>
		</thead>
		<tbody>
		 <%
			
					for (int x =0; x < categorias.length;  ++x) {
			%>
	    <tr>
	      <td><%=x+1%></td>
	      <td><%=categorias[x]%></td>
	    </tr>
	    <% ;
	    } %>
		</tbody>
	</table>
	<%} %>
	<table class="table table-striped" style="  margin: 5%;   margin-right: auto;
  margin-left: auto;">
		<thead>
			<tr>
				<th scope="col">Programas de Formacion </th>
			</tr>
		</thead>
		<tbody>
		
			<tr>
				<td><%=text%></td>
			</tr>
		</tbody>
	</table>
	
	
	
	
	<form action="ConsultaPoE" method="post">
	<!--<form>  -->
	
	<input type="hidden" name="NomInstituto" value="<%=dato%>">
	<input type="hidden" name="NomCurso" value="<%=nomCurso%>">
	<input type="hidden" name="boton" id="boton" value="">

<div class="container-fluid">
	<div class="container">

  <div class="form-group">
    <div class="form-group col-sm-12">
      <label for="inputDatoF" style="    font-size: 70%;">Ingrese Edicion o Programa de Formacion </label>
      <input type="text" name="DatoF" class="form-control" id="inputDatoF" style="    font-size: 100'%;">
    </div>
   </div>
   	    <div class="form-group col-sm-12">
   	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="procesar('edicion')" style="padding: 4%;">Consultar Edicion</button>
	</div>
	    <div class="form-group col-sm-12">
	<button type="button" class="btn btn-primary btn-lg btn-block" onclick="procesar('progFormacion')" style="padding: 4%;">Consultar Programa de Formacion</button>
	</div>
</div>
</div>
	
	<script type="text/javascript">
		function procesar(tipo) {
			document.getElementById("boton").value = tipo;
			document.forms[0].submit();
		}
	</script>   
   
	<%@include file="/footer.jsp" %>
	</form>

</body>
</html>