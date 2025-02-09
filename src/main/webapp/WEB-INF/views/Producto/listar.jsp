<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>productos</title>
</head>
<body>
	<div style="width: 100vw;">
		<table style="margin: 0px auto;">
			<caption style="font-size: 20px;">�Listado de Productos!</caption>
			<tr>
				<th><b>ID</b></th>
				<th><b>Nombre</b></th>
				<th><b>Marca</b></th>
				<th><b>Precio</b></th>
				<th><b>F.Fabricaci�n</b></th>
				<th><b>F.Vencimiento</b></th>
				<th><b>Stock</b></th>
				<th><b>Categor�a</b></th>
				<th><b>Acci�n</b></th>
			</tr>
			
			<c:forEach var="producto" items="${bProductos}">
				<tr>
					<td>${producto.producto_id}</td>
					<td>${producto.nombre}</td>
					<td>${producto.marca}</td>
					<td>${producto.precio}</td>					
					<td>${producto.ffabricacion}</td>
					<td>${producto.fvencimiento}</td>
					<td>${producto.stock}</td>
					<td>${producto.categoria.descripcion}</td>
					<td>
						<a href="/senati/producto/detalle/${producto.producto_id}">Detalle</a> |
						<a href="/senati/producto/editar/${producto.producto_id}">Editar</a> | 
						<a href="/senati/producto/borrar/${producto.producto_id}">Borrar</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<div style="text-align: center;">
			<a href="/senati/index">Index</a> | 
			<a href="/senati/producto/registrar">Registrar</a>
		</div>
	</div>
</body>
</html>