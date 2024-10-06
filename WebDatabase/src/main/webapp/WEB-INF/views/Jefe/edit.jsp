<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Jefe</title>

</head>
<body>
	<div class="container">
		<h3>Editar Jefe</h3>
		<form:form action="" method="post" modelAttribute="jefe">
			<div class="details">
				<form:label path="jefe_id">ID:</form:label>
				<form:input path="jefe_id" type="text" readonly="true" />
			</div>
			<div class="details">
				<form:label path="nombre">Nombre:</form:label>
				<form:input path="nombre" type="text" />
			</div>
			<div class="details">
				<form:label path="apellidos">Apellidos:</form:label>
				<form:input path="apellidos" type="text" />
			</div>
			<div class="details">
				<form:label path="nro_celular">Nro. Celular:</form:label>
				<form:input path="nro_celular" type="text" />
			</div>
			<div class="details">
				<form:label path="nacionalidad">Nacionalidad:</form:label>
				<form:input path="nacionalidad" type="text" />
			</div>
			<div class="btn-group">
				<button type="submit" class="btn">Editar</button>
				<button type="button" class="btn" onclick="location.href='/senati/jefe/listar'">Cancelar</button>
			</div>
		</form:form>
	</div>
</body>
</html>
