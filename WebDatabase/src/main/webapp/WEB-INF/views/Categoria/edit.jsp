<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!-- Edit Page Categoria -->
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>
<div class="container">
    <h3>Editar Categoria</h3>
    <form:form action="" method="post" modelAttribute="categoria">
        <div class="form-group">
            <form:label path="descripcion">Descripcion:</form:label>
            <form:input path="descripcion" type="text" class="form-control" />
        </div>
        <div class="form-group">
            <form:label path="jefe">Jefe:</form:label>
            <form:select path="jefe.jefe_id" class="form-control">
                <form:options items="${bJefes}" itemValue="jefe_id" itemLabel="nombre" />
            </form:select>
        </div>
        <button type="submit" class="btn btn-primary">Editar</button>
    </form:form>
</div>
</body>
</html>
