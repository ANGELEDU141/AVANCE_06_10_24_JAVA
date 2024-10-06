<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle de Jefe</title>

</head>
<body>
	<div class="container">
		<h3>Detalle de Jefe</h3>
		<div class="details">
			<b>ID:</b> ${jefe.jefe_id}<br/>
			<b>Nombre:</b> ${jefe.nombre}<br/>
			<b>Apellido:</b> ${jefe.apellidos}<br/>
			<b>Nacionalidad:</b> ${jefe.nacionalidad}<br/>
			<b>Nro Celular:</b> ${jefe.nro_celular}<br/>
		</div>
        <div class="btn-group">
            <button type="button" class="btn" onclick="location.href='/senati/jefe/listar'">Volver</button>
        </div>
	</div>
</body>
</html>