package com.juanma.models;

import java.util.HashMap;
import java.util.Map;

public class Almacen {
	Map<String, Proyectos> cosmeticos;

	public Almacen() {
		this.cosmeticos = new HashMap<String, Proyectos>();
	}

	public boolean almacenar(Proyectos unProyecto) {
		this.cosmeticos.put(unProyecto.getCodigo(), unProyecto);
		return true;
	}

	public Proyectos retirar(String unCodigo) {
		if (this.cosmeticos != null && unCodigo.trim() != "") {
			Proyectos elMaquillajeARetirar = this.cosmeticos.get(unCodigo);
			this.cosmeticos.remove(unCodigo);
			return elMaquillajeARetirar;
		} else
			return null;
	}

	public void muestraLosCosmeticos() {
		for(Map.Entry m : this.cosmeticos.entrySet() ){
			System.out.println(m.getKey()+" / "+ m.getValue() +" / "+ ((Proyectos)m.getValue()).getMarca() );
		}
	}

}