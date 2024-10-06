<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registrar</title>
</head>
<body>
	<div style="text-align: center;">
		<h3>¡Registrar Jefe!</h3>
		
		<!-- Formulario Spring -->
		<form:form method="post" action="" modelAttribute="jefe">
			Nombre: <form:input type="text" path="nombre"/> <br>
			Apellidos: <form:input type="text" path="apellidos"/> <br>
			Nro. celular: <form:input type="text" path="nro_celular"/> <br>
			Nacionalidad: <form:input type="text" path="nacionalidad"/> <br><br>
			
			<button type="submit">Guardar</button>
			<button type="button" onclick="location.href='/senati/jefe/listar'">Cancelar</button>
		</form:form>
	</div>
</body>
</html>