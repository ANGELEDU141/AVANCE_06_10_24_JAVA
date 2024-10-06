<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar Jefe</title>

</head>
<body>
	<div class="container">
		<h3>Eliminar Jefe</h3>

        <form:form method="post" action="" modelAttribute="jefe" >
            <p class="warning" >¿Está seguro de borrar?</p>
            <div class="form-field">
               JefeId:<form:input id="jefeId" type="text" path="jefe_id" readonly="true"/>
            </div>

            <div class="form-field">
               Nombre:<form:input id="nombre" type="text" path="nombre" readonly="true"/>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn" >Si</button>
                <button type="button" class="btn" onclick="location.href='/senati/jefe/listar'">No</button>
            </div>
        </form:form>


	</div>
</body>
</html>