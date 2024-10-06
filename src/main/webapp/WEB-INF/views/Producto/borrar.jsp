<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>borrar</title>
</head>
<body>
	<div style="text-align: center;">
		<h3>¡Borrar producto!</h3>
		
		<!-- Formulario Spring -->
		<form:form method="post" action="" modelAttribute="producto">
			Producto ID: <form:input type="text" path="producto_id" readonly="true"/> <br>			
			Nombre: <form:input type="text" path="nombre" readonly="true"/> <br>
			
			<p style="color: red;">¿Está seguro de borrar?</p>
			
			<button type="submit">Si, borrar</button>
			<button type="button" onclick="location.href='/senati/producto/listar'">Cancelar</button>
		</form:form>
	</div>
</body>
</html>