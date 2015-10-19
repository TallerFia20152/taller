package edu.usmp.fia.taller.plancurricular.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.usmp.fia.taller.common.bean.plancurricular.*;
import edu.usmp.fia.taller.common.dao.modules.plancurricular.DAOFactoryPCurricular;
import edu.usmp.fia.taller.plancurricular.interfaces.DAOPlanCurricular;

@WebServlet("/PlanCurricular")
public class PlanCurricularServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;    
    public PlanCurricularServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		String dato = request.getParameter("funcion");
		
		if(dato.equals("listarPC")){
			try {
				int codigo = Integer.parseInt(request.getParameter("id"));
				DAOFactoryPCurricular dao = DAOFactoryPCurricular.getDAOFactoryPCurricular(DAOFactoryPCurricular.MYSQL);
				DAOPlanCurricular OBJECT_DAO = dao.getDAOPlanCurricular();
				Vector<PlanCurricularBean> OBJECT = OBJECT_DAO.listar(codigo);	
				request.setAttribute("LIST_PLAN_CURRICULAR", OBJECT);			
				getServletContext().getRequestDispatcher("/plancurricular/plancurricular.jsp").forward(request,  response);
			} catch (Exception e) {
				out.print(e.getMessage());
			}
		}else if (dato.equals("seleccionarPC")){
			try {	
				
				DAOFactoryPCurricular dao = DAOFactoryPCurricular.getDAOFactoryPCurricular(DAOFactoryPCurricular.MYSQL);
				DAOPlanCurricular OBJECT_DAO = dao.getDAOPlanCurricular();
				Vector<PlanCurricularBean> OBJECT = OBJECT_DAO.listarVersion();	
				request.setAttribute("LIST_VERSIONES_PLAN_CURRICULAR", OBJECT);			
				getServletContext().getRequestDispatcher("/plancurricular/versionesPC.jsp").forward(request,  response);
			} catch (Exception e) {
				out.print(e.getMessage());
			}
		}else if (dato.equals("listarPCA")){
			try {
				
				DAOFactoryPCurricular dao = DAOFactoryPCurricular.getDAOFactoryPCurricular(DAOFactoryPCurricular.MYSQL);
				DAOPlanCurricular OBJECT_DAO = dao.getDAOPlanCurricular();
				Vector<PlanCurricularBean> OBJECT = OBJECT_DAO.listarPCA();	
				request.setAttribute("LIST_PLAN_CURRICULAR", OBJECT);			
				getServletContext().getRequestDispatcher("/plancurricular/plancurricular.jsp").forward(request,  response);
			} catch (Exception e) {
				out.print(e.getMessage());
			}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			DAOFactoryPCurricular dao = DAOFactoryPCurricular.getDAOFactoryPCurricular(DAOFactoryPCurricular.MYSQL);
			DAOPlanCurricular plan = dao.getDAOPlanCurricular();
			String dato=request.getParameter("btn_funcion");
			int codigo = Integer.parseInt(request.getParameter("id"));
			if(dato.equals("Registrar Nueva Version")){
				int id=0;
				for(int i=0;i<Integer.parseInt(request.getParameter("cantidad"));i++){
					if(i==0){	
						id = plan.guardarPlanCurricular("2015-II");//periodo academico
					}
					String id_curso=request.getParameter("cursoID"+i);
					int creditos=Integer.parseInt(request.getParameter("creditos"+i));
					int horasT=Integer.parseInt(request.getParameter("horasTeoria"+i));
					int horasL=Integer.parseInt(request.getParameter("horasLaboratorio"+i));
					int horasP=Integer.parseInt(request.getParameter("horasPractica"+i));
					int ciclo_id=Integer.parseInt(request.getParameter("ciclo_id"+i));
					int creditosR;
					if(request.getParameter("creditosRequisito"+i).equals("null")){
						creditosR=0;	
					}else{
						creditosR=Integer.parseInt(request.getParameter("creditosRequisito"+i));
					}
					plan.guardarPlanCurricularDetalle(id,id_curso, creditos,ciclo_id,12, horasT, horasL, horasP, creditosR ,1);
				}
				request.getRequestDispatcher("/welcome.jsp").forward(request,  response);
			}else if (dato.equals("Modificar Plan")){
				
				DAOPlanCurricular OBJECT_DAO = dao.getDAOPlanCurricular();
				Vector<PlanCurricularBean> OBJECT = OBJECT_DAO.listar(codigo);	
				request.setAttribute("LIST_PLAN_CURRICULAR", OBJECT);
				getServletContext().getRequestDispatcher("/plancurricular/actualizarPC.jsp").forward(request,  response);
			}else if (dato.equals("Elegir Plan")){
				plan.establecerPlanCurricular(codigo);
				request.getRequestDispatcher("/welcome.jsp").forward(request,  response);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
}