package edu.usmp.fia.taller.common.dao.modules.plancurricular;
import java.sql.Connection;
import java.sql.DriverManager;
import edu.usmp.fia.taller.common.dao.modules.plancurricular.DAOFactoryPCurricular;
import edu.usmp.fia.taller.plancurricular.MySql.*;
import edu.usmp.fia.taller.plancurricular.interfaces.*;

public class MySqlFactoryPCurricular extends DAOFactoryPCurricular{
	
	public static Connection obtenerConexion(){
		Connection con = null;
		try {
			String userName = "root";
			String password = "root";
            String url = "jdbc:mysql://localhost:3306/bd_taller_proyectos";
            Class.forName ("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection (url, userName, password);
		} catch (Exception e) {
			System.out.print(e.getMessage());
			System.out.print("Connection Failed!");
			e.printStackTrace();
		}
		return con;
	}
	
	public DAOPlanCurricular getDAOPlanCurricular(){
		return new MySqlPlanCurricularDao();
	}
	public DAOCurso getDAOCurso(){
		return new MySqlCursoDao();
	}
}
