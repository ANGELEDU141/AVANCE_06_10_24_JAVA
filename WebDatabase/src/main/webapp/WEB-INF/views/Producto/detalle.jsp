<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detalle</title>
</head>
<body>
	<div style="text-align: center;">
		<h3>¡Detalle producto!</h3>
		
		<b>Producto ID: </b>${producto.producto_id} <br>
		<b>Nombre: </b>${producto.nombre} <br>
		<b>Marca: </b>${producto.marca} <br>
		<b>Precio: </b>${producto.precio} <br>
		<b>Fecha fabricación: </b>${producto.ffabricacion} <br>
		<b>Fecha vencimiento: </b>${producto.fvencimiento} <br>
		<b>Stock: </b>${producto.stock} <br><br>
		
		<a href="/senati/producto/listar">Volver</a>
	</div>
</body>
</html>