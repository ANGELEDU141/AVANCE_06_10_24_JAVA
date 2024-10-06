<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar Proveedor</title>

</style>
</head>
<body>
	<div class="container">
		<h3>Eliminar Proveedor</h3>
		<p>Estas seguro de eliminar el proveedor?</p>
		<form:form action="" method="post" modelAttribute="proveedor">
			<div class="form">
				<form:label path="proveedor_id">ID:</form:label>
				<form:input path="proveedor_id" type="text" readonly="true" />
			</div>
			<div class="form">
				<form:label path="nombre">Nombre:</form:label>
				<form:input path="nombre" type="text" readonly="true" />
			</div>
			<div class="btn-group">
				<button type="submit" class="btn">Eliminar</button>
				<button type="button" class="btn" onclick="location.href='/senati/proveedor/listar'">Cancelar</button>
			</div>
		</form:form>
	</div>
</body>
</html>
