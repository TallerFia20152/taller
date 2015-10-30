package edu.usmp.fia.taller.plancurricular.action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.usmp.fia.taller.common.dao.modules.plancurricular.DAOFactoryPCurricular;
import edu.usmp.fia.taller.plancurricular.interfaces.DAOCurso;

@WebServlet("/Curso")
public class CursoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CursoServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		try {
			DAOFactoryPCurricular dao = DAOFactoryPCurricular.getDAOFactoryPCurricular(DAOFactoryPCurricular.MYSQL);
			DAOCurso plan = dao.getDAOCurso();
			String dato=request.getParameter("btn_funcion");
			String codigo = request.getParameter("id");
			
			if (dato.equals("Agregar Curso")){
			String nombre=request.getParameter("nombre");
			String tipo=request.getParameter("tipo");
			String estado=request.getParameter("estado");
			boolean v=plan.validarCurso(nombre);
			if(v==false){
				plan.agregarCurso(nombre,tipo,estado);					
			}else{System.out.print("el nombre se repite");}
			request.getRequestDispatcher("/welcome.jsp").forward(request,response);
			}else if (dato.equals("Eliminar Curso")){
				String id=request.getParameter("id");
				plan.eliminarCurso(id);
				request.getRequestDispatcher("/welcome.jsp").forward(request,  response);
			}else if (dato.equals("Modificar Curso")){
				
				String nombre=request.getParameter("nombre");
				String tipo=request.getParameter("tipo");
				String estado=request.getParameter("estado");
				boolean v=plan.validarCurso(nombre);
				if(v==false){
					plan.modificarCurso(codigo,nombre,tipo,estado);
					}
				request.getRequestDispatcher("/welcome.jsp").forward(request,response);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
}