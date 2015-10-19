<!DOCTYPE html>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%@page import="edu.usmp.fia.taller.common.bean.plancurricular.PlanCurricularBean"%>
<%@page import="edu.usmp.fia.taller.common.bean.*"%>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="java.util.Vector"%>
<html lang="en">
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
			
			
			
			<a href="<%=application.getContextPath() %>/PlanCurricular?funcion=listarPCA">Plan Curricular Actual</a><br>
<%Vector<PlanCurricularBean> VECTOR_LIST = (Vector)request.getAttribute("LIST_VERSIONES_PLAN_CURRICULAR");
	int cont=0;
	for (int i =0; i< VECTOR_LIST.size(); i++){ 
	int j=i+1;
	if(j<VECTOR_LIST.size()){
		if(cont==0){%>
		<a> Periodo académico <%=VECTOR_LIST.get(i).getSemestre()%></a></br>
		<% 
		}
		if(VECTOR_LIST.get(i).getSemestre().equals(VECTOR_LIST.get(j).getSemestre())){
			cont=1;
		}else{
			cont=0;
		}
	}else if(j==VECTOR_LIST.size()){
		if(cont==0 & VECTOR_LIST.get(i).getSemestre().equals(VECTOR_LIST.get(i-1).getSemestre())){%>
			<a> Periodo académico <%=VECTOR_LIST.get(i).getSemestre()%></a></br>
	<%}}%>
		<a href="<%=application.getContextPath() %>/PlanCurricular?funcion=listarPC&id=<%=VECTOR_LIST.get(i).getIdVersion() %>"><%=VECTOR_LIST.get(i).getSemestre()%></a></br>
	<%}%>

			<jsp:include page="/resources/include/footer.jsp"></jsp:include>
		</div>
		<jsp:include page="/resources/include/chat.jsp"></jsp:include>
		</div>
	</div>

	<jsp:include page="/resources/include/footer-resources.jsp"></jsp:include>
	
</body>
</html>