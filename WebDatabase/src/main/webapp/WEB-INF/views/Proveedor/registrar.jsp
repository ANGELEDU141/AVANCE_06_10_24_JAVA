<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrar Proveedor</title>

</head>
<body>
	<div class="container">
		<h3>Registrar Proveedor</h3>
		<form:form method="post" action="" modelAttribute="proveedor">
			<div class="form">
				<form:label path="nombre">Nombre</form:label>
				<form:input path="nombre" required="required" />
				<form:label path="ruc">RUC</form:label>
				<form:input path="ruc" required="required" />
				<form:label path="telefono">Telefono</form:label>
				<form:input path="telefono" required="required" />
				<form:label path="website">Web Site</form:label>
				<form:input path="website" required="required" />
			</div>
			<div class="btn-group">
				<input type="submit" class="btn" value="Registrar">
				<button type="button" class="btn" onclick="location.href='/senati/proveedor/listar'">Volver</button>
			</div>
		</form:form>
	</div>
</body>
</html>

