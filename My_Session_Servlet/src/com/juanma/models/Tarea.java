package com.juanma.models;

public class Tarea {
		private String codigo;
		private String idProyecto;
		private String Tarea;
		private String responsable;
		
		public Tarea(String codigo, String idProyecto, String tarea, String responsable) {
			super();
			this.codigo = codigo;
			this.idProyecto = idProyecto;
			Tarea = tarea;
			this.responsable = responsable;
		}
		
		public String getCodigo() {
			return codigo;
		}
		
		public void setCodigo(String codigo) {
			this.codigo = codigo;
		}
		
		public String getIdProyecto() {
			return idProyecto;
		}
		
		public void setIdProyecto(String idProyecto) {
			this.idProyecto = idProyecto;
		}
		
		public String getTarea() {
			return Tarea;
		}
		
		public void setTarea(String tarea) {
			Tarea = tarea;
		}
		
		public String getResponsable() {
			return responsable;
		}
		
		public void setResponsable(String responsable) {
			this.responsable = responsable;
		}
		
				
		
		
	}


