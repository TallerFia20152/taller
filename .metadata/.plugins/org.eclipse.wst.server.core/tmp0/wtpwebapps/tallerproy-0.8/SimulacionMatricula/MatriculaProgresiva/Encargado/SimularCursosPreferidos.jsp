<!DOCTYPE html>
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
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/font-icons/entypo/css/entypo.css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/neon-core.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/neon-theme.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/neon-forms.css">
<link rel="stylesheet" href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/custom.css">
<link rel="stylesheet"
	href="<%=request.getServletContext().getContextPath() %>/resources/assets/css/skins/red.css">


<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/jquery-1.11.0.min.js"></script>
<script src="SimulacionMatricula/excellexport/excellentexport.js"></script>
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
		<!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

		<div class="sidebar-menu">

			<div class="sidebar-menu-inner">

				<header class="logo-env">

					<!-- logo -->
					<div class="logo">
						<a href="SimulacionMatricula/index.jsp">
							<h1 style="color: #FCFDFF;">
								<strong>USMP</strong>
							</h1>
						</a>
					</div>

					<!-- logo collapse icon -->
					<div class="sidebar-collapse">
						<a href="#" class="sidebar-collapse-icon"> <!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
							<i class="entypo-menu"></i>
						</a>
					</div>


					<!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
					<div class="sidebar-mobile-menu visible-xs">
						<a href="#" class="with-animation"> <!-- add class "with-animation" to support animation -->
							<i class="entypo-menu"></i>
						</a>
					</div>

				</header>


				<ul id="main-menu" class="main-menu">
					<li><a
						href="<%=request.getContextPath()%>/SimulacionMatricula/index.jsp">
							<i class="entypo-gauge"></i> <span class="title">INICIO</span>
					</a></li>
					<li><a href="#"> <i class="entypo-gauge"></i> <span
							class="title">SIMULACI&Oacute;N DE MATRICULA</span>
					</a>
						<ul>
							<li><a
								href="<%=request.getContextPath()%>/SimulacionInicial"> <span
									class="title"> Simulaci&oacute;n Inicial</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/SimularCursosConcluyentes">
									<span class="title">Matricula Probable</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/SimularCursosPreferidos">
									<span class="title">Matricula Preferible</span>
							</a></li>

							<li><a href="index.jsp"> <i class="entypo-gauge"></i> <span
									class="title">MATRICULA PROGRESIVA</span>
							</a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/ListarAlumnos">
											<span class="title">Listado Alumnos</span>
									</a></li>
									<li><a href="<%=request.getContextPath()%>/ListarCursos">
											<span class="title">Listado Cursos</span>
									</a></li>

									<li><a href="#"> <span class="title"> Demanda
												de Cursos preferidos </span>
									</a></li>
									<li><a href="#"> <span class="title">Solicitudes
												y Observaciones</span>
									</a></li>
									<li><a href="#"> <span class="title">Resultado
												de Matricula Progresiva</span>
									</a></li>
								</ul></li>

							<li><a href="index.jsp"> <i class="entypo-gauge"></i> <span
									class="title">MAT PROGRESIVA-ALUMNO</span>
							</a>
								<ul>
									<li><a
										href="<%=request.getContextPath()%>/AlumnoListarCursosAptos">
											<span class="title">Listado Cursos Aptos</span>
									</a></li>

									<li><a
										href="<%=request.getContextPath()%>/AlumnoListarCursosPropuestos">
											<span class="title">Listado Cursos Propuestos</span>
									</a></li>

									<li><a href="<%=request.getContextPath()%>/ListarCursos">
											<span class="title">Generar Pre-Matricula</span>
									</a></li>

									<li><a href="<%=request.getContextPath()%>/ListarCursos">
											<span class="title">Actualizar Pre-Matricula</span>
									</a></li>
									<li><a href="#"> <span class="title">Solicitudes
												y Observaciones</span>
									</a></li>
								</ul></li>
						</ul></li>
				</ul>
			</div>

		</div>

		<div class="main-content">

			<div class="row">

				<!-- Profile Info and Notifications -->
				<div class="col-md-6 col-sm-8 clearfix">

					<ul class="user-info pull-left pull-none-xsm">

						<!-- Profile Info -->
						<li class="profile-info dropdown">
							<!-- add class "pull-right" if you want to place this from right -->

							<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img
								src="<%=request.getServletContext().getContextPath() %>/resources/assets/images/thumb-1@2x.png" alt=""
								class="img-circle" width="44" /> <%=oPersona.getNombre() + " " + oPersona.getApePaterno()%></strong>
						</a>

							<ul class="dropdown-menu">

								<!-- Reverse Caret -->
								<li class="caret"></li>

								<!-- Profile sub-links -->
								<li><a href="extra-timeline.html"> <i
										class="entypo-user"></i> Editar Perfil
								</a></li>

								<li><a href="correo.html"> <i class="entypo-mail"></i>
										Correo
								</a></li>

							</ul>
						</li>

					</ul>

					<ul class="user-info pull-left pull-right-xs pull-none-xsm">

						<!-- Message Notifications -->
						<li class="notifications dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="entypo-mail"></i> <span class="badge badge-info">6</span>
						</a>

							<ul class="dropdown-menu">
								<li>
									<form class="top-dropdown-search">

										<div class="form-group">
											<input type="text" class="form-control"
												placeholder="Search anything..." name="s" />
										</div>

									</form>

									<ul class="dropdown-menu-list scroller">
										<li class="active"><a href="#"> <span
												class="image pull-right"> <img
													src="<%=request.getServletContext().getContextPath() %>/resources/assets/images/thumb-1.png" alt=""
													class="img-circle" />
											</span> <span class="line"> <strong>Luc Chartier</strong> -
													yesterday
											</span> <span class="line desc small"> This ainâ€™t our first
													item, it is the best of the rest. </span>
										</a></li>
									</ul>
								</li>

								<li class="external"><a href="correo.html">All Messages</a></li>
							</ul></li>

					</ul>

				</div>


				<!-- Raw Links -->
				<div class="col-md-6 col-sm-4 clearfix hidden-xs">

					<ul class="list-inline links-list pull-right">

						<!-- Language Selector -->
						<li class="dropdown language-selector">Idioma: &nbsp; <a
							href="#" class="dropdown-toggle" data-toggle="dropdown"
							data-close-others="true"> <img
								src="<%=request.getServletContext().getContextPath() %>/resources/assets/images/flag-es.png" />
						</a>

							<ul class="dropdown-menu pull-right">
								<li><a href="#"> <img
										src="<%=request.getServletContext().getContextPath() %>/resources/assets/images/flag-es.png" /> <span>Español</span>
								</a></li>
							</ul>

						</li>

						<li class="sep"></li>


						<li><a href="#" data-toggle="chat" data-collapse-sidebar="1">
								<i class="entypo-chat"></i> Chat <span
								class="badge badge-success chat-notifications-badge is-hidden">0</span>
						</a></li>

						<li class="sep"></li>

						<li><a href="extra-login.html"> Salir <i
								class="entypo-logout right"></i>
						</a></li>
					</ul>

				</div>

			</div>

			<hr />

			<ol class="breadcrumb bc-3">
				<li><a href="#"><i class="fa-home"></i>Simulacion Matricula</a></li>
				<li class="active"><strong>Matricula Cursos Preferidos</strong></li>
			</ol>

			<h1>Simulacion Matricula</h1>

			<br />

			<%
				List<Area> listaArea = (List<Area>) request.getAttribute("listaAreaCurso");
			%>
			<div class="row">
				<div class="col-md-12 opcion">
					<a download="Demanda_Cursos_Preferidos.xls" href=""
						onclick="return ExcellentExport.excel(this, 'table-1');"
						class="btn btn-lg btn-black">Exportar</a>
				</div>
				<p>
			</div>

			<div class="row">

				<div class="col-md-12">

					<div class="panel panel-dark" data-collapsed="1">

						<!-- panel head -->
						<div class="panel-heading">
							<div class="panel-title">
								<strong>SIMULACION DE MATRICULA DE CURSOS PREFERIDOS</strong>
							</div>

							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
							</div>
						</div>

						<div class="panel-body">

							<p>
							<table class="table responsive" id="table-1">

								<thead>
									<tr>
										<th><STRONG>CODIGO</STRONG></th>
										<th><STRONG>CURSO</STRONG></th>
										<th>
											<center>
												<STRONG>CANTIDAD</STRONG>
										</th>
										</center>
									</tr>
								</thead>
								<%
									for (int i = 0; i < listaArea.size(); i++) {
								%>
								<tbody>
									<tr>
										<td><font size="3" , color="#B04444"> <strong><%=listaArea.get(i).getNombre().toUpperCase()%></strong>
										</font></td>
									</tr>
									<%
										for (int j = 0; j < listaArea.get(i).getCursoList().size(); j++) {
									%>
									<tr>
										<td><%=listaArea.get(i).getCursoList().get(j).getCodigo()%></td>
										<td><%=listaArea.get(i).getCursoList().get(j).getCurso()%>
										</td>
										<td align="center"><%=listaArea.get(i).getCursoList().get(j).getCantidadAlumnos()%>
										</td>
									</tr>
									<%
										}
									%>
								</tbody>
								<%
									}
								%>
							</table>

							</p>

						</div>

					</div>

				</div>

			</div>
			<!-- Footer -->
			<footer class="main">
				&copy; 2015 <strong>SOID </strong>Solutions
			</footer>
		</div>

		<div id="chat" class="fixed" data-current-user="Art Ramadani"
			data-order-by-status="1" data-max-chat-history="25">
			<div class="chat-inner">
				<h2 class="chat-header">
					<a href="#" class="chat-close"><i class="entypo-cancel"></i></a> <i
						class="entypo-users"></i> Chat <span
						class="badge badge-success is-hidden">0</span>
				</h2>
			</div>
		</div>
	</div>

	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/gsap/main-gsap.js"></script>
	<script
		src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/bootstrap.js"></script>
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/joinable.js"></script>
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/resizeable.js"></script>
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/neon-api.js"></script>


	<!-- Imported scripts on this page -->
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/neon-chat.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/neon-custom.js"></script>


	<!-- Demo Settings -->
	<script src="<%=request.getServletContext().getContextPath() %>/resources/assets/js/neon-demo.js"></script>

</body>
</html>