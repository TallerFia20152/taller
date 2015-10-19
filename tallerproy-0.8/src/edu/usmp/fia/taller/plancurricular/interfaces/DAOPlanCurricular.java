package edu.usmp.fia.taller.plancurricular.interfaces;
import java.util.Vector;
import edu.usmp.fia.taller.common.bean.plancurricular.PlanCurricularBean;

public interface DAOPlanCurricular {
	
	public Vector<PlanCurricularBean>  listar(int codigo) throws Exception;
	public Vector<PlanCurricularBean>  listarPCA() throws Exception;
	public Vector<PlanCurricularBean>  listarVersion() throws Exception;
	public boolean guardarPlanCurricularDetalle(int id_plan,String curso_id,int creditos,int ciclo_id,int curso_condicion_id,int horasTeoria,int horasLaboratorio,int horasPractica,int creditos_requisito,int curso_area_id) throws Exception;
	public int buscarID()throws Exception;
	public int buscarIDPC()throws Exception;
	public int guardarPlanCurricular(String fecha)throws Exception;
	public void establecerPlanCurricular(int codigo) throws Exception;
	public boolean agregarCurso(String nombre,String tipo, String estado) throws Exception;
	public boolean modificarCurso(String id,String nombre,String tipo, String estado) throws Exception;
	public boolean eliminarCurso(String id) throws Exception;
	public boolean validarCurso(String nombre) throws Exception;
}
