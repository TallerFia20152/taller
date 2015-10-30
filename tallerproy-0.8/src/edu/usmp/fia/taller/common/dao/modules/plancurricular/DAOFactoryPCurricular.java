package edu.usmp.fia.taller.common.dao.modules.plancurricular;
import edu.usmp.fia.taller.common.dao.modules.plancurricular.MySqlFactoryPCurricular;
import edu.usmp.fia.taller.plancurricular.MySql.MySqlPlanCurricularDao;
import edu.usmp.fia.taller.plancurricular.interfaces.DAOCurso;
import edu.usmp.fia.taller.plancurricular.interfaces.DAOPlanCurricular;

public abstract class DAOFactoryPCurricular {

	public static final int MYSQL 		=1;
	public static final int SQLSERVER 	=2;
	public static final int ORACLE 		=3;
		
	public static DAOFactoryPCurricular getDAOFactoryPCurricular(int factory){
		
		switch (factory) {
			case MYSQL:
				return new MySqlFactoryPCurricular();
			case SQLSERVER:
				//return new SqlDaoFactory();
			case ORACLE:
				//return new OracleDaoFactory();
			default:
				return null;
		}
	}

	public abstract DAOPlanCurricular getDAOPlanCurricular();
	public abstract DAOCurso getDAOCurso();
	
	
}