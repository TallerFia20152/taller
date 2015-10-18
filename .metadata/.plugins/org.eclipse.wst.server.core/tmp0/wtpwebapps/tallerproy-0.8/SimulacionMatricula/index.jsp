<!DOCTYPE html>
<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<title>Taller Proyectos</title>

<link rel="stylesheet"
	href="assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet"
	href="assets/css/font-icons/entypo/css/entypo.css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/neon-core.css">
<link rel="stylesheet" href="assets/css/neon-theme.css">
<link rel="stylesheet" href="assets/css/neon-forms.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/skins/red.css">

<script src="assets/js/jquery-1.11.0.min.js"></script>
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

				<div class="sidebar-user-info">

					<div class="sui-normal">
						<a href="#" class="user-link"> <img
							src="assets/images/thumb-1@2x.png" alt="" class="img-circle" />
							<span>Bienvenido,</span> <strong><%=oPersona.getNombre() + " " + oPersona.getApePaterno()%></strong>
						</a>
					</div>

					<div class="sui-hover inline-links animate-in">
						<!-- You can remove "inline-links" class to make links appear vertically, class "animate-in" will make A elements animateable when click on user profile -->

						<a href="correo.html"> <i class="entypo-mail"></i> Correo
						</a> <a href="login?f=logout""> <i class="entypo-lock"></i> Salir
						</a> <span class="close-sui-popup">&times;</span>
						<!-- this is mandatory -->
					</div>
				</div>

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


						<ul class="user-info pull-left pull-right-xs pull-none-xsm">

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
													placeholder="Buscar..." name="s" />
											</div>

										</form>

										<ul class="dropdown-menu-list scroller">
											<li class="active"><a href="#"> <span
													class="image pull-right"> <img
														src="SimulacionMatricula/assets/images/thumb-1.png" alt=""
														class="img-circle" />
												</span> <span class="line"> <strong>Luc Chartier</strong> -
														yesterday
												</span> <span class="line desc small"> This ainâ€™t our
														first item, it is the best of the rest. </span>
											</a></li>
										</ul>
									</li>

									<li class="external"><a href="correo.html">Ver todos
											los mensajes</a></li>
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
								src="assets/images/flag-es.png" />
						</a>

							<ul class="dropdown-menu pull-right">
								<li><a href="#"> <img src="assets/images/flag-es.png" />
										<span>Español</span>
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

			<div class="row">
				<div class="col-sm-3 col-xs-6">

					<div class="tile-stats tile-red">
						<div class="icon">
							<i class="entypo-users"></i>
						</div>
						<div class="num" data-start="0" data-end="83" data-postfix=""
							data-duration="1500" data-delay="0">0</div>

						<h3>Registered users</h3>
						<p>so far in our blog, and our website.</p>
					</div>

				</div>

				<div class="col-sm-3 col-xs-6">

					<div class="tile-stats tile-green">
						<div class="icon">
							<i class="entypo-chart-bar"></i>
						</div>
						<div class="num" data-start="0" data-end="135" data-postfix=""
							data-duration="1500" data-delay="600">0</div>

						<h3>Daily Visitors</h3>
						<p>this is the average value.</p>
					</div>

				</div>

				<div class="col-sm-3 col-xs-6">
					<a href="correo.html">
						<div class="tile-stats tile-aqua">
							<div class="icon">
								<i class="entypo-mail"></i>
							</div>
							<div class="num" data-start="0" data-end="23" data-postfix=""
								data-duration="1500" data-delay="1200">0</div>

							<h3>New Messages</h3>
							<p>messages per day.</p>
						</div>
					</a>

				</div>

				<div class="col-sm-3 col-xs-6">

					<div class="tile-stats tile-blue">
						<div class="icon">
							<i class="entypo-rss"></i>
						</div>
						<div class="num" data-start="0" data-end="52" data-postfix=""
							data-duration="1500" data-delay="1800">0</div>

						<h3>Subscribers</h3>
						<p>on our site right now.</p>
					</div>

				</div>
			</div>

			<br />

			<div class="row">
				<div class="col-sm-8"></div>


			</div>


			<br />

			<div class="row">

				<div class="col-sm-4"></div>

				<div class="col-sm-8"></div>

			</div>

			<br />

			<!-- Footer -->
			<footer class="main">
				&copy; 2014 <strong>SOID</strong> SOID Solution
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

			<!-- conversation template -->
			<div class="chat-conversation">

				<div class="conversation-header">
					<a href="#" class="conversation-close"><i class="entypo-cancel"></i></a>

					<span class="user-status"></span> <span class="display-name"></span>
					<small></small>
				</div>

				<ul class="conversation-body">
				</ul>

				<div class="chat-textarea">
					<textarea class="form-control autogrow"
						placeholder="Type your message"></textarea>
				</div>

			</div>

		</div>




	</div>

	<!-- Imported styles on this page -->
	<link rel="stylesheet"
		href="assets/js/jvectormap/jquery-jvectormap-1.2.2.css">
	<link rel="stylesheet" href="assets/js/rickshaw/rickshaw.min.css">

	<!-- Bottom scripts (common) -->
	<script src="assets/js/gsap/main-gsap.js"></script>
	<script src="assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/neon-api.js"></script>
	<script src="assets/js/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>


	<!-- Imported scripts on this page -->
	<script src="assets/js/jvectormap/jquery-jvectormap-europe-merc-en.js"></script>
	<script src="assets/js/jquery.sparkline.min.js"></script>
	<script src="assets/js/rickshaw/vendor/d3.v3.js"></script>
	<script src="assets/js/rickshaw/rickshaw.min.js"></script>
	<script src="assets/js/raphael-min.js"></script>
	<script src="assets/js/morris.min.js"></script>
	<script src="assets/js/toastr.js"></script>
	<script src="assets/js/neon-chat.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/neon-custom.js"></script>


	<!-- Demo Settings -->
	<script src="assets/js/neon-demo.js"></script>

</body>
</html>