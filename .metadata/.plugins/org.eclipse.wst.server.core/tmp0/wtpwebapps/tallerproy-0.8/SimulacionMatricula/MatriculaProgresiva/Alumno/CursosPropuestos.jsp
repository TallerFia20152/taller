<!DOCTYPE html>
<%@page
	import="edu.usmp.fia.taller.common.bean.SimulacionMatricula.Curso"%>
<%@page
	import="edu.usmp.fia.taller.common.bean.SimulacionMatricula.Area"%>
<%@page import="java.util.List"%>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Neon Admin Panel" />
<meta name="author" content="" />

<title>Taller Proyectos</title>

<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/font-icons/entypo/css/entypo.css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/neon-core.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/neon-theme.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/neon-forms.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/custom.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath()%>/resources/assets/css/skins/red.css">


<script
	src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/jquery-1.11.0.min.js"></script>
<script>
	$.noConflict();
</script>
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

			<hr />

			<ol class="breadcrumb bc-3">
				<li>
				<li><a
					href="<%=request.getContextPath()%>/SimulacionMatricula/index.jsp">

						<i class="fa-home"></i>Matricula Progresiva
				</a></li>

				<li><a href="#">Listar Alumnos</a></li>
				<li class="active"><strong>Curso Propuestos</strong></li>
			</ol>

			<h1>Matricula Progresiva</h1>

			<br />

			<%
				List<Curso> listaCursos = (List<Curso>) request.getAttribute("CursosPropuestos");
			%>

			<div class="row">

				<div class="col-md-12">

					<div class="panel panel-dark" data-collapsed="1">

						<!-- panel head -->
						<div class="panel-heading">
							<div class="panel-title">
								<strong>CURSOS PROPUESTOS</strong>
							</div>

							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
							</div>
						</div>

						<div class="panel-body">

							<p>
							<table class="table responsive">

								<thead>
									<tr>
										<th><STRONG>CODIGO</STRONG></th>
										<th><STRONG>CURSO</STRONG></th>
										<th>
											<center>
												<STRONG>CREDITOS</STRONG>
											</center>
										</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int j = 0; j < listaCursos.size(); j++) {
									%>
									<tr>
										<td><%=listaCursos.get(j).getCodigo()%></td>
										<td><%=listaCursos.get(j).getCurso()%></td>
										<td align="center"><%=listaCursos.get(j).getCredito()%></td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>

							</p>

						</div>

					</div>

				</div>

			</div>
			<jsp:include page="/resources/include/footer.jsp"></jsp:include>
		</div>

		<jsp:include page="/resources/include/chat.jsp"></jsp:include>
	</div>

	<!-- 
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/gsap/main-gsap.js"></script>
	<script
		src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/bootstrap.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/joinable.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/resizeable.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/neon-api.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/neon-chat.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/neon-custom.js"></script>
	<script src="<%=request.getServletContext().getContextPath()%>/resources/assets/js/neon-demo.js"></script>
	-->
	<jsp:include page="/resources/include/footer-resources.jsp"></jsp:include>
</body>
</html>