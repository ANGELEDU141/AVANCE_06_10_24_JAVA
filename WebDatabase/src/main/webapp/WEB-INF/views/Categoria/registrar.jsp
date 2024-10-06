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
		<h3>¡Registrar Categoria!</h3>
		
		<!-- Formulario Spring -->
		<form:form action="" method="post" modelAttribute="categoria">
			<div class="form">
				<label for="descripcion">Descripcion</label>
				<form:input type="text" path="descripcion"  />


				<label for="jefe">Jefe</label>
                <form:select path="jefe.jefe_id">
                    <form:options  items="${bJefes}" itemValue="jefe_id" itemLabel="nombre"></form:options>
                </form:select>

			</div>
			<div class="btn-group">
				<button type="submit" class="btn">Registrar</button>
				<button type="button" class="btn" onclick="location.href='/senati/categoria/listar'">Volver</button>
			</div>
		</form:form>
	</div>
</body>
</html>