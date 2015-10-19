package edu.usmp.fia.taller.plancurricular.interfaces;
import java.util.Vector;
import edu.usmp.fia.taller.common.bean.plancurricular.CursoBean;

public interface DAOCurso {
	
	public Vector<CursoBean>  listar() throws Exception;
	public boolean agregarCurso(String nombre,String tipo, String estado) throws Exception;
	public boolean modificarCurso(String id,String nombre,String tipo, String estado) throws Exception;
	public boolean eliminarCurso(String id) throws Exception;
	public boolean validarCurso(String nombre) throws Exception;
}
