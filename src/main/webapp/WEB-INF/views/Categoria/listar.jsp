<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>categorias</title>
</head>
<body>
	<div style="width: 100vw;">
		<table style="margin: 0px auto;">
			<caption style="font-size: 20px;">¡Listado de Categorías!</caption>
			<tr>
				<th><b>ID</b></th>
				<th><b>Descripción</b></th>
				<th><b>Jefe</b></th>
				<th><b>Acción</b></th>
			</tr>
			
			<c:forEach var="categoria" items="${bCategorias}">
				<tr>
					<td>${categoria.categoria_id}</td>
					<td>${categoria.descripcion}</td>
					<td>${categoria.jefe.nombre}</td>
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
			<a href="/senati/categoria/registrar">Registrar</a>
		</div>
	</div>
</body>
</html>