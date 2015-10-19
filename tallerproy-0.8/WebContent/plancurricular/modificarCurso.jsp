<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Taller Proyectos</title>
	<jsp:include page="/resources/include/header-resources.jsp"></jsp:include>
</head>

<%
	Usuario oUsuario = (Usuario) request.getSession(false).getAttribute(SessionParameters.USUARIO.text());
	Persona oPersona = oUsuario.getPersona();
%>


<body class="page-body skin-red">
	<div class="page-container">
		<jsp:include page="/resources/include/sidebar-menu.jsp"></jsp:include>
		<div class="main-content">
			<jsp:include page="/resources/include/profile-bar.jsp"></jsp:include>
			<form action="<%=request.getContextPath() %>/Curso" method="post">
<h1>Modificar curso</h1>
Codigo del curso: <input type="text" name="id" placeholder="Escribe el codigo del curso aquí"/><br><br>
Nombre del curso : <input type="text" name="nombre"/><br><br>
Tipo del curso : 
	<select name="tipo">
	<option value="Seleccionar">Seleccionar</option>
	<option value="1">Laboratorio</option>
	<option value="2">Teoría</option> 
	</select><br><br>
Estado : <select name="estado">
	<option value="Seleccionar">Seleccionar</option>
	<option value="1">1</option>
	<option value="2">2</option>
		</select><br><br>
<input type="submit" name="btn_funcion" value="Modificar Curso"/><br>
</form>
			<jsp:include page="/resources/include/footer.jsp"></jsp:include>
		</div>
		<jsp:include page="/resources/include/chat.jsp"></jsp:include>
		</div>
	</div>

	<jsp:include page="/resources/include/footer-resources.jsp"></jsp:include>
	
</body>
</html>