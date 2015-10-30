package edu.usmp.fia.taller.plancurricular.MySql;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import edu.usmp.fia.taller.common.bean.plancurricular.PlanCurricularBean;
import edu.usmp.fia.taller.common.dao.modules.plancurricular.MySqlFactoryPCurricular;
import edu.usmp.fia.taller.plancurricular.interfaces.DAOPlanCurricular;

public class MySqlPlanCurricularDao extends MySqlFactoryPCurricular implements DAOPlanCurricular{
	//LISTAR
	@Override
	public Vector<PlanCurricularBean> listar(int codigo) throws Exception {
		
		Vector<PlanCurricularBean> VECTOR_OUT = null;
		
		try {
			
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "SELECT * FROM t_plan_curricular_detalle p,t_curso c,t_ciclo ci where p.curso_id=c.id AND ci.id=p.ciclo_id AND p.id="+codigo+" ORDER BY ci.id ASC";
			ResultSet rs = stmt.executeQuery(query);
			VECTOR_OUT = new Vector<PlanCurricularBean>();
			
			while(rs.next()){			
				PlanCurricularBean OBJETO = new PlanCurricularBean();
				OBJETO.setId(rs.getString("id"));
				OBJETO.setCurso_id(rs.getString("curso_id"));
				OBJETO.setCreditos(rs.getString("creditos"));
				OBJETO.setCiclo_id(rs.getString("ciclo_id"));
				OBJETO.setCurso_condicion_id(rs.getString("curso_condicion_id"));
				OBJETO.setHorasTeoria(rs.getString("horasTeoria"));
				OBJETO.setHorasLaboratorio(rs.getString("horasLaboratorio"));
				OBJETO.setHorasPractica(rs.getString("horasPractica"));
				OBJETO.setCreditos_requisito(rs.getString("creditos_requisito"));
				OBJETO.setCurso_area_id(rs.getString("curso_area_id"));
				OBJETO.setCurso_nombre(rs.getString("nombre"));
				OBJETO.setCiclo(rs.getString("ci.nombre"));
				VECTOR_OUT.add(OBJETO);
			}
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return VECTOR_OUT;
		
	}
	
	public Vector<PlanCurricularBean> listarPCA() throws Exception {
		
		Vector<PlanCurricularBean> VECTOR_OUT = null;
		try {
			
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "SELECT * FROM t_plan_curricular_detalle p,t_plan_curricular pc,t_curso c,t_ciclo ci where p.curso_id=c.id AND ci.id=p.ciclo_id AND pc.estado='Activo' AND pc.id=p.id ORDER BY ci.id ASC";
			ResultSet rs = stmt.executeQuery(query);
			VECTOR_OUT = new Vector<PlanCurricularBean>();
			while(rs.next()){			
				PlanCurricularBean OBJETO = new PlanCurricularBean();
				OBJETO.setId(rs.getString("id"));
				OBJETO.setCurso_id(rs.getString("curso_id"));
				OBJETO.setCreditos(rs.getString("creditos"));
				OBJETO.setCiclo_id(rs.getString("ciclo_id"));
				OBJETO.setCurso_condicion_id(rs.getString("curso_condicion_id"));
				OBJETO.setHorasTeoria(rs.getString("horasTeoria"));
				OBJETO.setHorasLaboratorio(rs.getString("horasLaboratorio"));
				OBJETO.setHorasPractica(rs.getString("horasPractica"));
				OBJETO.setCreditos_requisito(rs.getString("creditos_requisito"));
				OBJETO.setCurso_area_id(rs.getString("curso_area_id"));
				OBJETO.setCurso_nombre(rs.getString("nombre"));
				OBJETO.setCiclo(rs.getString("ci.nombre"));
				VECTOR_OUT.add(OBJETO);
			}
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return VECTOR_OUT;
		
	}

	
	public Vector<PlanCurricularBean> listarVersion() throws Exception {
		Vector<PlanCurricularBean> VECTOR_OUT = null;
		try {
			
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "Select * from t_semestre s,t_plan_curricular p where s.id=p.semestre_id order by s.id ASC";
			ResultSet rs = stmt.executeQuery(query);
			VECTOR_OUT = new Vector<PlanCurricularBean>();
			while(rs.next()){
				PlanCurricularBean OBJETO = new PlanCurricularBean();
				OBJETO.setSemestre(rs.getString("s.nombre"));
				OBJETO.setIdVersion(rs.getInt("p.id"));
				//OBJETO.setFecha(rs.getString("s.fecha_creacion"));
				VECTOR_OUT.add(OBJETO);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return VECTOR_OUT;
	}
	
	public boolean guardarPlanCurricularDetalle(int id_plan,String curso_id,int creditos,int ciclo_id,int curso_condicion_id,int horasTeoria,int horasLaboratorio,int horasPractica,int creditos_requisito,int curso_area_id)throws Exception {
		boolean flag = false;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			
			int filas = 	stmt.executeUpdate("INSERT INTO t_plan_curricular_detalle " +
							"(id,curso_id,creditos,ciclo_id,curso_condicion_id,horasTeoria,horasLaboratorio,horasPractica,creditos_requisito,curso_area_id) " +
							"VALUES " +
							"("+id_plan+",'"+curso_id+"',"+creditos+","+ciclo_id+",1,"+horasTeoria+","+horasLaboratorio+","+horasPractica+","+creditos_requisito+","+curso_area_id+")");//"+curso_condicion_id+"
			if(filas == 1){
				flag = true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}
	public int guardarPlanCurricular(String periodoAc)throws Exception {
		int id=0;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			
			stmt.executeUpdate("INSERT INTO t_plan_curricular" +
							"(semestre_id,fecha_creacion) " +
							"VALUES " +
							"("+4+",'2015-09-09 12:12:12')");
			buscarID();
			id=buscarIDPC();
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return id;
	}
	public int buscarID()throws Exception {
		int max=0;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "Select * from t_semestre";
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()){
				max=Math.max(max,rs.getInt("id"));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return max;
	}
	public int buscarIDPC()throws Exception {
		int max=0;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from t_plan_curricular p");
			while(rs.next()){
				max=Math.max(max,rs.getInt("id"));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return max;
	}
	
	public void establecerPlanCurricular(int codigo) throws Exception {
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			establecerPlanCurricularI();
			stmt.executeUpdate("update t_plan_curricular set estado='Activo' where id="+codigo);
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
	public void establecerPlanCurricularI() throws Exception {
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			stmt.executeUpdate("update t_plan_curricular set estado='Inactivo' where estado='Activo'");
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
	public boolean agregarCurso(String nombre,String tipo, String estado)throws Exception {
		boolean flag = false;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			//System.out.print(id_plan+"-.-"+curso_id+"-.-"+creditos+"-.-"+ciclo_id+"-.-"+horasLaboratorio+"-.-"+horasPractica+"-.-"+horasTeoria+"\n");
			
			int filas = 	stmt.executeUpdate("INSERT INTO t_curso " +
							"(nombre,tipo,estado) VALUES " +
							"("+nombre+","+tipo+","+estado+")");
			if(filas == 1){
				flag = true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}
	
	public boolean eliminarCurso(String id)throws Exception {
		
		return false;
	}
	
	public boolean modificarCurso(String id,String nombre,String tipo, String estado)throws Exception {
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			stmt.executeUpdate("update t_curso set nombre='"+nombre+"',estado='"+estado+"',tipo='"+tipo+"' where id='"+id+"'");
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return false;
	}
	
	public boolean validarCurso(String nombre)throws Exception {
		boolean flag=false;
		System.out.print("llega asqui");
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from t_curso where nombre='"+nombre+"'");
			if(rs==null){
				flag=true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}
}