<%@page import="edu.usmp.fia.taller.common.bean.plancurricular.PlanCurricularBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="edu.usmp.fia.taller.common.bean.*"%>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="java.util.Vector"%>
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
			
			
			
			<%Vector<PlanCurricularBean> VECTOR_LIST = (Vector)request.getAttribute("LIST_PLAN_CURRICULAR");%>
<form action="PlanCurricular?id=<%=VECTOR_LIST.get(1).getId()%>" method="post">
<div>
<table class="table table-striped" border="1">
<tr>
<th class="" style="" colspan="16"><h3> Agregar Plan Curricular </h3></th>
</tr>

<tr>
<th>Codigo del curso</th>
<th>Nombre del curso</th>
<th>Créditos</th>
<th>Ciclo</th>
<th>Ciclo id</th>	
<th>Horas Teoria</th>
<th>Horas Laboratorio</th>
<th>Horas Practica</th>
<th>Creditos Requisito</th>
<th>Condiciones del curso</th>
</tr>


<% 
	int cont=0;
	int cant=0;
	for (int i =0; i< VECTOR_LIST.size(); i++){ 
	int j=i+1;
	cant++;
	if(j<VECTOR_LIST.size()){
		if(cont==0){%>
			<tr><td colspan=10 align="center">Ciclo <%=VECTOR_LIST.get(i).getCiclo()%></td></tr>
					<%
		}
		if(VECTOR_LIST.get(i).getCiclo().equals(VECTOR_LIST.get(j).getCiclo())){
			cont=1;
		}else{
			cont=0;
		}
	}%>
	<tr>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCurso_id()%>" name="cursoID<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCurso_nombre()%>" name="cursoNombre<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCreditos()%>" name="creditos<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCiclo()%>" name="ciclo<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCiclo_id()%>" name="ciclo_id<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getHorasTeoria()%>" name="horasTeoria<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getHorasLaboratorio()%>" name="horasLaboratorio<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getHorasPractica()%>" name="horasPractica<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCreditos_requisito()%>" name="creditosRequisito<%=i%>"></td>
		<td class="td"><input type="text" value="<%=VECTOR_LIST.get(i).getCurso_condicion_id()%>" name="cursoCondicion<%=i%>"></td>
	</tr>

<% } %>
<tr><td colspan="8"><input type="text" name="cantidad" value="<%=cant%>"/></td></tr>
</table>
</div>
<input type="submit" name="btn_funcion" value="Registrar Nueva Version"/>
</form>

			<jsp:include page="/resources/include/footer.jsp"></jsp:include>
		</div>
		<jsp:include page="/resources/include/chat.jsp"></jsp:include>
		</div>
	</div>

	<jsp:include page="/resources/include/footer-resources.jsp"></jsp:include>
	
</body>
</html>