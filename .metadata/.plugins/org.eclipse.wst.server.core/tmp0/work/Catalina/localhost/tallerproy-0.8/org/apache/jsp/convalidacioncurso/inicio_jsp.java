/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.59
 * Generated at: 2015-10-17 23:11:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.convalidacioncurso;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import edu.usmp.fia.taller.common.action.SessionParameters;
import edu.usmp.fia.taller.common.bean.Usuario;
import edu.usmp.fia.taller.common.bean.Persona;

public final class inicio_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("<title>Taller Proyectos</title>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/resources/include/header-resources.jsp", out, false);
      out.write("\r\n");
      out.write("<link href=\"css/selectize.default.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"css/inicio.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"js/selectize.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/selectizes/alumnoSelectize.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/inicio.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");

	Usuario oUsuario = (Usuario) request.getSession(false)
			.getAttribute(SessionParameters.USUARIO.text());
	Persona oPersona = oUsuario.getPersona();

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body class=\"page-body skin-red\">\r\n");
      out.write("\t<div class=\"page-container\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/resources/include/sidebar-menu.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t<div class=\"main-content\">\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/resources/include/profile-bar.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<h1>Proceso de Convalidacion > Convalidar Cursos</h1>\r\n");
      out.write("\t\t\t<section id=\"SeleccionarAlumno\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div id=\"label\">\r\n");
      out.write("\t\t\t\t\t\t<span>ALUMNO</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"comboAlumno\"\r\n");
      out.write("\t\t\t\t\t\t\tplaceholder=\"Ingrese primer apellido o código de alumno para comenzar\" />\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div id=\"imprcab\">\r\n");
      out.write("\t\t\t\t<fieldset>\r\n");
      out.write("\t\t\t\t\t<legend>Datos Generales</legend>\r\n");
      out.write("\t\t\t\t\t<table style=\"height: 30px\">\r\n");
      out.write("\t\t\t\t\t\t<tr id=\"datosalumno\">\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit\" style=\"width: 50px;\">Código:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"width: 100px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"codigo\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit\" style=\"width: 50px;\">Apellidos:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"width: 150px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"apellidos\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit\" style=\"width: 50px;\">Nombres:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"width: 150px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"nombres\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit\" style=\"width: 50px;\">Facultad:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"width: 220px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"facultad\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit\" style=\"width: 50px;\">Escuela:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"width: 250px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"escuela\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"summary-content\">\r\n");
      out.write("\t\t\t\t<fieldset style=\"float: left; width: 45%; max-width: 45%\">\r\n");
      out.write("\t\t\t\t\t<legend>Datos de Ingreso</legend>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Modalidad Ingreso</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"desmoding\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Semestre de Ingreso</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"seming\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Grado Academico</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"desgraaca\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Ultimo Semestre Matriculado</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"ultsemmat\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Requisitos para egresar:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"credreq\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("\t\t\t\t<fieldset style=\"float: right; width: 45%; max-width: 45%\">\r\n");
      out.write("\t\t\t\t\t<legend>Datos Adicionales</legend>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">DNI:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"documentos\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Domicilio:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"domicilio\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Telefonos:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"telefonos\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Correos:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"correos\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Fecha Nacimiento:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"fecnac\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"subsubtit ajuste\">Sexo:</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"sexcli\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("\t\t\t\t<fieldset style=\"float: left; width: 45%; max-width: 45%\">\r\n");
      out.write("\t\t\t\t\t<legend>Datos de Familiares</legend>\r\n");
      out.write("\t\t\t\t\t<div></div>\r\n");
      out.write("\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/resources/include/footer.jsp", out, false);
      out.write("</di\r\n");
      out.write("\t\t\t\t\t\tv>\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/resources/include/chat.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/resources/include/footer-resources.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
