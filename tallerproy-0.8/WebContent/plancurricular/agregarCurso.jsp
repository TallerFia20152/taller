<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.login.servlet.LoginServlet"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%@ page import="edu.usmp.fia.taller.plancurricular.action.*"%>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
				<h1>Agregar curso</h1>
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
				<input type="submit" name="btn_funcion" value="Agregar Curso" class="btn btn-lg btn-primary"/><br>
			</form>

			<jsp:include page="/resources/include/footer.jsp"></jsp:include>
		</div>
		<jsp:include page="/resources/include/chat.jsp"></jsp:include>
		</div>
	</div>

	<jsp:include page="/resources/include/footer-resources.jsp"></jsp:include>
	
</body>
</html>