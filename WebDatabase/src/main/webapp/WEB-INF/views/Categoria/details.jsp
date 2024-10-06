<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle de Categoria</title>
<style>
	.details {
		text-align: left;
		line-height: 1.8;
		font-size: 16px;
		margin-bottom: 20px;
	}

	.details b {
		font-weight: bold;
		color: #333;
		margin-right: 5px;
	}
</style>
</head>
<body>
	<div class="container">
		<h3>Detalle de Categoria</h3>
		<div class="details">
			<b>ID:</b> ${categoria.categoria_id}<br/>
			<b>Descripcion:</b> ${categoria.descripcion}<br/>
			<b>Jefe:</b> ${categoria.jefe.nombre}<br/>
		</div>
        <div class="btn-group">
            <button type="button" class="btn" onclick="location.href='/senati/categoria/listar'">Volver</button>
        </div>
	</div>
</body>
</html>