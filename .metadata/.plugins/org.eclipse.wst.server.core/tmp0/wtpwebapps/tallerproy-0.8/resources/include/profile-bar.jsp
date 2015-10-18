<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<%
	Usuario oUsuario = (Usuario) request.getSession(false).getAttribute(SessionParameters.USUARIO.text());
	Persona oPersona = oUsuario.getPersona();
%>


<div class="row">

	<!-- Profile Info and Notifications -->
	<div class="col-md-6 col-sm-8 clearfix">

		<ul class="user-info pull-left pull-none-xsm">

			<!-- Profile Info -->
			<li class="profile-info dropdown">
				<!-- add class "pull-right" if you want to place this from right -->

				<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img
					src="<%=request.getServletContext().getContextPath()%>/resources/assets/images/thumb-1@2x.png" alt=""
					class="img-circle" width="44" /> <%=oPersona.getNombre() + " " + oPersona.getApePaterno()%></strong>
			</a>

				<ul class="dropdown-menu">

					<!-- Reverse Caret -->
					<li class="caret"></li>

					<!-- Profile sub-links -->
					<li><a href="extra-timeline.html"> <i
							class="entypo-user"></i> Editar Perfil
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