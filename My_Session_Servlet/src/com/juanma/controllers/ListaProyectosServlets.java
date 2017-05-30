package com.juanma.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.juanma.models.Proyectos;


@WebServlet("/lista_proyectos")
public class ListaProyectosServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession misession= (HttpSession) request.getSession();
		
		
	
		if(misession.getAttribute("idUsuario")!=null){
			Proyectos[] listaProyectos = {
				new Proyectos("Sitio web de Hola a todos", "Ricardo", 10),
				new Proyectos("Pantalla de inicio", "Ricardo", 20),
				new Proyectos("Cambiar fondo", "Ricardo", 30),
				new Proyectos("Pantalla Acerca de...", "Juana", 10),
				new Proyectos("Estandarizar formulario", "Juana", 20),
				new Proyectos("Corregir problemas responsive", "Juana", 30),
				new Proyectos("Autocompletar", "Luis", 30),
				new Proyectos("Guardado automático", "Luis", 30),
				new Proyectos("Consulta Base de datos", "Luis", 30) };
			
				
				if(misession.getAttribute("idUsuario")=="ricardo@l.es"){
					
					
				}
				
		
		
		System.out.println("***Lista:"+listaProyectos);
		
		request.setAttribute("listaProyectosMostrar", listaProyectos);
		
		request.getRequestDispatcher("plantilla_proyectos.jsp").forward(request, response);
		
		}else{
			
			misession.invalidate();
			response.sendRedirect("login");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
