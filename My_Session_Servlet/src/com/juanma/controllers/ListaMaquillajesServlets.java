package com.juanma.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.juanma.models.Maquillaje;


@WebServlet("/lista_maquillajes")
public class ListaMaquillajesServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession misession= (HttpSession) request.getSession();
		
	
		if(misession.getAttribute("idUsuario")!=null){
		Maquillaje[] listaMaquillajes = {
				new Maquillaje("Sitio web de Hola a todos", "Ricardo", 10),
				new Maquillaje("Pantalla de inicio", "Ricardo", 20),
				new Maquillaje("Cambiar fondo", "Ricardo", 30),
				new Maquillaje("Pantalla Acerca de...", "Juana", 10),
				new Maquillaje("Estandarizar formulario", "Juana", 20),
				new Maquillaje("Corregir problemas responsive", "Juana", 30),
				new Maquillaje("Autocompletar", "Luis", 30),
				new Maquillaje("Guardado automático", "Luis", 30),
				new Maquillaje("Consulta Base de datos", "Luis", 30)
			
	
				
		};
		
		System.out.println("***Lista:"+listaMaquillajes);
		
		request.setAttribute("listaMaquillajesAMostrar", listaMaquillajes);
		
		request.getRequestDispatcher("plantilla_maquillajes.jsp").forward(request, response);
		
		}else{
			
			misession.invalidate();
			response.sendRedirect("login");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
