<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		<%@include file="/header.jsp" %>
   <base target="_top">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
</head>
<style>

body {
  background-image: url("img/2.jpg");
    font-size: 250%;
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

</style>



<body>


<form action="ConsultaEdicionCurso" method="post">
<div class="container-fluid">
	<div class="container">  
	  <div class="form-group">
	    <div class="col-sm-12">
			<label for="inputRol">Buscar por instituto o categor�a:</label>
		</div>
	    <div class="col-sm-12">
			<select id="catIns" name="catIns" class="form-group" style="width: 100%;margin: 6% auto 6% auto;">
			<option selected>Instituto</option>
			<option>Categor�a</option>
		  </select>
	    </div>
	    </div>    
	    
	    <div class="col-sm-12">
		  <button type="submit" class="btn btn-primary btn-lg btn-block" style="padding: 4%;">Confirmar</button>
		</div>
		</div>
	</div>
	
	</form>
	
		 <%@include file="/footer.jsp" %>
	
</body>
</html>