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
				new Maquillaje("Max Factor", "labios", 10),
				new Maquillaje("Loreal", "cabello", 20),
				new Maquillaje("Estee Lauder", "ojos", 30),
				new Maquillaje("Vichy", "labios", 10),
				new Maquillaje("Ponds", "cabello", 20),
				new Maquillaje("La Perla", "ojos", 30)
		
			
	
				
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
