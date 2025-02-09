<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editar</title>
</head>
<body>
	<div style="text-align: center;">
		<h3>�Editar producto!</h3>
		
		<!-- Formulario Spring -->
		<form:form method="post" action="" modelAttribute="producto">
			Producto ID: <form:input type="text" path="producto_id" readonly="true"/> <br>
			
			Nombre: <form:input type="text" path="nombre"/> <br>
			Marca: <form:input type="text" path="marca"/> <br>
			Precio: <form:input type="number" step="any" path="precio"/> <br>
			Fecha de fabricaci�n: <form:input type="date" path="ffabricacion"/> <br>
			Fecha de vencimiento: <form:input type="date" path="fvencimiento"/> <br>
			Stock: <form:input type="number" path="stock"/> <br>
			
			Categor�a: 
			<form:select path="categoria.categoria_id">
				<form:options items="${bCategorias}" itemValue="categoria_id" itemLabel="descripcion"/>
			</form:select> <br><br>
			
			<button type="submit">Guardar</button>
			<button type="button" onclick="location.href='/senati/producto/listar'">Cancelar</button>
		</form:form>
	</div>
</body>
</html>