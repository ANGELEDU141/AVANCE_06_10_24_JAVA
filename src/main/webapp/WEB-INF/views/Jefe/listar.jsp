<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jefes</title>
</head>
<body>
	<div style="width: 100vw;">
		<table style="margin: 0px auto;">
			<caption style="font-size: 20px;">¡Listado de Jefes!</caption>
			<tr>
				<th><b>ID</b></th>
				<th><b>Nombre</b></th>
				<th><b>Apellidos</b></th>
				<th><b>Nro.Celular</b></th>
				<th><b>Nacionalidad</b></th>
				<th><b>Acción</b></th>
			</tr>
			
			<c:forEach var="jefe" items="${bJefes}">
				<tr>
					<td>${jefe.jefe_id}</td>
					<td>${jefe.nombre}</td>
					<td>${jefe.apellidos}</td>
					<td>${jefe.nro_celular}</td>					
					<td>${jefe.nacionalidad}</td>
					<td>
						<a href="#">Detalle</a> |
						<a href="#">Editar</a> | 
						<a href="#">Borrar</a>
					</td>
				</tr>
			</c:forEach>			
		</table>
		
		<div style="text-align: center;">
			<a href="/senati/index">Index</a> | 
			<a href="/senati/jefe/registrar">Registrar</a>
		</div>
	</div>
</body>
</html>