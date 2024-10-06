
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar Categoria</title>
<style>
	.container {
		background-color: #fff;
		padding: 40px 60px;
		border-radius: 8px;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		text-align: center;
		max-width: 400px;
		width: 100%;
		box-sizing: border-box;
		margin: 0 auto;
	}

	.form {
		text-align: left;
	}

	.form label {
		display: block;
		margin-bottom: 10px;
		font-weight: bold;
	}

	.form input[type="text"] {
		width: 100%;
		padding: 10px;
		margin-bottom: 20px;
		border: 1px solid #ccc;
		border-radius: 4px;
	}

	.form input[type="text"]:read-only {
		background-color: #ddd;
	}

	.btn-group {
		margin-top: 20px;
	}

	.btn {
		padding: 12px 20px;
		border: none;
		border-radius: 4px;
		background-color: #4CAF50;
		color: #fff;
		cursor: pointer;
	}

	.btn:hover {
		background-color: #3e8e41;
	}

	.btn:active {
		background-color: #3e8e41;
		box-shadow: 0 5px #666;
		transform: translateY(4px);
	}
</style>
</head>
<body>
	<div class="container">
		<h3>Eliminar Categoria</h3>
		<p>Estas seguro de eliminar la categoria?</p>
		<form:form action="" method="post" modelAttribute="categoria">
			<div class="form">
				<form:label path="descripcion">Descripcion:</form:label>
				<form:input path="descripcion" type="text" readonly="true" />
			</div>
			<div class="btn-group">
				<button type="submit" class="btn">Eliminar</button>
				<button type="button" class="btn" onclick="location.href='/senati/categoria/listar'">Cancelar</button>
			</div>
		</form:form>
	</div>
</body>
</html>