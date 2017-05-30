package com.juanma.models;

import java.util.ArrayList;
import java.util.List;

public class Persona {
	private int gradoCoquetitud;
	private List<Proyectos> listaDeProyectos;
	
	public Persona(){
		this.listaDeProyectos = new ArrayList<Proyectos>(); 
	}
	
	public List<Proyectos> coleccionarCosmetico(Proyectos unProyecto){
		this.listaDeProyectos.add(unProyecto);
		return this.listaDeProyectos;
	}
	
	public void checkCosmeticos() {
		for (Proyectos Proyectos : this.listaDeProyectos) {
			System.out.println( Proyectos.showData() );
		}
	}
	
	public int pagar(){
		int precioPagado=0;
		for (Proyectos Proyectos : this.listaDeProyectos) {
			precioPagado += Proyectos.comprar();
		}
		
		return precioPagado;
	}

	
}
