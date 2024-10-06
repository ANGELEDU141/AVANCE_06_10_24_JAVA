<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listar</title>
</head>
<body>
	<div style="text-align: center;">
		<h3>¡Listado de Proveedores!</h3>
		<table style="margin: 0px auto;">
			<caption style="font-size: 20px;">Listado</caption>
			<tr>
				<th><b>ID</b></th>
				<th><b>Nombre</b></th>
				<th><b>RUC</b></th>
				<th><b>Telefono</b></th>
				<th><b>Web Site</b></th>
				<th><b>Acción</b></th>
			</tr>
			<c:forEach var="proveedor" items="${bProveedor}">
				<tr>
					<td>${proveedor.proveedor_id}</td>
					<td>${proveedor.nombre}</td>
					<td>${proveedor.ruc}</td>
					<td>${proveedor.telefono}</td>
					<td>${proveedor.website}</td>
					<td>
						<a href="/senati/proveedor/detalle/${proveedor.proveedor_id}">Detalle</a> |
                        <a href="/senati/proveedor/editar/${proveedor.proveedor_id}">Actualizar</a> |
                        <a href="/senati/proveedor/borrar/${proveedor.proveedor_id}">Eliminar</a>					</td>
				</tr>
			</c:forEach>
		</table>
		<div style="text-align: center;">
			<a href="/senati/index">Index</a> | 
			<a href="/senati/proveedor/registrar">Registrar</a>
		</div>
	</div>
</body>
</html>
