package edu.usmp.fia.taller.common.bean.plancurricular;

public class PlanCurricularBean {

	String id;
	String curso_id;
	String creditos;
	String ciclo_id;
	String ciclo_nombre;
	String curso_condicion_id;
	String horasTeoria;
	String horasLaboratorio;
	String horasPractica;
	String creditos_requisito;
	String curso_area_id;
	String Curso_nombre;
	String ciclo;
	
	String version;
	int IdVersion;
	
	String semestre;
	String fecha;
	
	
	public String getCiclo_nombre() {
		return ciclo_nombre;
	}
	public void setCiclo_nombre(String ciclo_nombre) {
		this.ciclo_nombre = ciclo_nombre;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public int getIdVersion() {
		return IdVersion;
	}
	public void setIdVersion(int idVersion) {
		IdVersion = idVersion;
	}
	public String getSemestre() {
		return semestre;
	}
	public void setSemestre(String semestre) {
		this.semestre = semestre;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getCiclo() {
		return ciclo;
	}
	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}
	public String getCurso_nombre() {
		return Curso_nombre;
	}
	public void setCurso_nombre(String curso_nombre) {
		Curso_nombre = curso_nombre;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCurso_id() {
		return curso_id;
	}
	public void setCurso_id(String curso_id) {
		this.curso_id = curso_id;
	}
	public String getCreditos() {
		return creditos;
	}
	public void setCreditos(String creditos) {
		this.creditos = creditos;
	}
	public String getCiclo_id() {
		return ciclo_id;
	}
	public void setCiclo_id(String ciclo_id) {
		this.ciclo_id = ciclo_id;
	}
	public String getCurso_condicion_id() {
		return curso_condicion_id;
	}
	public void setCurso_condicion_id(String curso_condicion_id) {
		this.curso_condicion_id = curso_condicion_id;
	}
	public String getHorasTeoria() {
		return horasTeoria;
	}
	public void setHorasTeoria(String horasTeoria) {
		this.horasTeoria = horasTeoria;
	}
	public String getHorasLaboratorio() {
		return horasLaboratorio;
	}
	public void setHorasLaboratorio(String horasLaboratorio) {
		this.horasLaboratorio = horasLaboratorio;
	}
	public String getHorasPractica() {
		return horasPractica;
	}
	public void setHorasPractica(String horasPractica) {
		this.horasPractica = horasPractica;
	}
	public String getCreditos_requisito() {
		return creditos_requisito;
	}
	public void setCreditos_requisito(String creditos_requisito) {
		this.creditos_requisito = creditos_requisito;
	}
	public String getCurso_area_id() {
		return curso_area_id;
	}
	public void setCurso_area_id(String curso_area_id) {
		this.curso_area_id = curso_area_id;
	}
	
	
	
	
}
