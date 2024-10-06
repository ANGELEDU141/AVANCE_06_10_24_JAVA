<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Borrar Jefe - Error</title>
</head>
<body>
	<div class="container">
		<h3>Error al borrar Jefe</h3>
		<p>No se puede borrar un Jefe que tiene Categorias asignadas.</p>
		<p>Por favor, borre las Categorias asociadas a este Jefe
		primero.</p>
		<div class="btn-group">
			<button type="button" class="btn"
				onclick="location.href='/senati/jefe/listar'">Volver</button>
		</div>
	</div>
</body>
</html>
