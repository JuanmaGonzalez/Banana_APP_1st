package com.juanma.models;

public class Proyecto {
	private String codigo;
	private String idUsuario;
	private String titulo;
	private String responsable;
	private java.util.Date fechaActivacion;
	private java.util.Date fechaPrevistaFinal;
	private boolean activo;
	
	public Proyecto(String idUsuario, String titulo, String responsable, java.util.Date fechaActivacion,
			java.util.Date fechaPrevistaFinal, boolean activo  ) {
		
		this.setCodigo(""+Math.random());
		this.idUsuario = idUsuario;
		this.titulo = titulo;
		this.responsable = responsable;
		this.fechaActivacion = fechaActivacion;
		this.fechaPrevistaFinal = fechaPrevistaFinal;
		this.activo = activo;
	}	

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public java.util.Date getFechaActivacion() {
		return fechaActivacion;
	}

	public void setFechaActivacion(java.util.Date fechaActivacion) {
		this.fechaActivacion = fechaActivacion;
	}

	public java.util.Date getFechaPrevistaFinal() {
		return fechaPrevistaFinal;
	}

	public void setFechaPrevistaFinal(java.util.Date fechaPrevistaFinal) {
		this.fechaPrevistaFinal = fechaPrevistaFinal;
	}

	public String getIdUsuario() {
		return idUsuario;
	}	
	
	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}
			
	public void settitulo(String descripcion) {
		this.titulo = descripcion;
	}
	public String getResponsable() {
		return responsable;
	}
	
	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}
	
	public boolean isActivo() {
		return activo;
	}
	public void setActivo(boolean activo) {
		this.activo = activo;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	
	
	
}
