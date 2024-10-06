<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Proveedor</title>

</head>
<body>
	<div class="container">
		<h3>Editar Proveedor</h3>
		<form:form action="" method="post" modelAttribute="proveedor">
			<div class="details">
				<form:label path="proveedor_id">ID:</form:label>
				<form:input path="proveedor_id" type="text" readonly="true" />
			</div>
			<div class="details">
				<form:label path="nombre">Nombre:</form:label>
				<form:input path="nombre" type="text" />
			</div>
			<div class="details">
				<form:label path="ruc">RUC:</form:label>
				<form:input path="ruc" type="text" />
			</div>
			<div class="details">
				<form:label path="telefono">Telefono:</form:label>
				<form:input path="telefono" type="text" />
			</div>
			<div class="details">
				<form:label path="website">Website:</form:label>
				<form:input path="website" type="text" />
			</div>
			<div class="btn-group">
				<button type="submit" class="btn">Editar</button>
				<button type="button" class="btn" onclick="location.href='/senati/proveedor/listar'">Cancelar</button>
			</div>
		</form:form>
	</div>
</body>
</html>
