<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle de Proveedor</title>


</head>
<body>
	<div class="container">
		<h3>Detalle de Proveedor</h3>
		<div class="details">
			<b>ID:</b> ${proveedor.proveedor_id}<br/>
			<b>Nombre:</b> ${proveedor.nombre}<br/>
			<b>RUC:</b> ${proveedor.ruc}<br/>
			<b>Telefono:</b> ${proveedor.telefono}<br/>
			<b>Web Site:</b> ${proveedor.website}<br/>
		</div>
        <div class="btn-group">
            <button type="button" class="btn" onclick="location.href='/senati/proveedor/listar'">Volver</button>
        </div>
	</div>
</body>
</html>
