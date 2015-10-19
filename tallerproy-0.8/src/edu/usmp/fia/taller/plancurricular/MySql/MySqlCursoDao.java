package edu.usmp.fia.taller.plancurricular.MySql;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import edu.usmp.fia.taller.common.bean.plancurricular.*;
import edu.usmp.fia.taller.common.dao.modules.plancurricular.MySqlFactoryPCurricular;
import edu.usmp.fia.taller.plancurricular.interfaces.DAOCurso;

public class MySqlCursoDao extends MySqlFactoryPCurricular implements DAOCurso{
	//LISTAR
	@Override
	public Vector<CursoBean> listar() throws Exception {
		
		Vector<CursoBean> VECTOR_OUT = null;
		
		try {
			
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "SELECT * FROM t_curso";
			ResultSet rs = stmt.executeQuery(query);
			VECTOR_OUT = new Vector<CursoBean>();
			
			while(rs.next()){			
				CursoBean OBJETO = new CursoBean();
				OBJETO.setIdCurso(rs.getString("id"));
				OBJETO.setNombreCurso(rs.getString("curso_id"));
				OBJETO.setTipoCurso(rs.getString("creditos"));
				OBJETO.setEstadoCruso(rs.getString("ciclo_id"));
				
				VECTOR_OUT.add(OBJETO);
			}
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return VECTOR_OUT;
		
	}
	
	public boolean agregarCurso(String nombre,String tipo, String estado)throws Exception {
		
		boolean flag = false;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			
			int e=Integer.parseInt(estado);
			int t=Integer.parseInt(tipo);
			int id=(int)(Math.random()*(9999-1000)+1000);
			int filas = 	stmt.executeUpdate("INSERT INTO t_curso " +
							"(id,nombre,tipo,estado) VALUES " +
							"('09"+id+"','"+nombre+"',"+t+","+e+")");
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
		System.out.print("llego a mysql");
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			int e=Integer.parseInt(estado);
			int t=Integer.parseInt(tipo);
			System.out.print(""+e+t+id+nombre);
			stmt.executeUpdate("update t_curso set nombre='"+nombre+"',estado="+e+",tipo="+t+" where id='"+id+"'");
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return false;
	}
	
	public boolean validarCurso(String nombre)throws Exception {
		boolean flag=false;
		try {
			Connection con = MySqlFactoryPCurricular.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from t_curso where nombre='"+nombre+"'");
			if(rs==null){
				System.out.print("rs = null");
				flag=true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}
}