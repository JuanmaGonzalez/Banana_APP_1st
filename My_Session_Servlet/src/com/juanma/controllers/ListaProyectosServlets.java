package com.juanma.controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.juanma.db.DBMock;
import com.juanma.models.Proyecto;

@WebServlet("/lista_proyectos")
public class ListaProyectosServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession misession = (HttpSession) request.getSession();

		if (misession.getAttribute("idUsuario") != null) {

			DBMock miBBDD=new DBMock();
			String idUsuario = (String)misession.getAttribute("idUsuario");
			List<Proyecto> lisProyectostUser=(ArrayList<Proyecto>) miBBDD.getUserProjects(idUsuario);
			request.setAttribute("listaProyectosMostrar", lisProyectostUser);
			
			request.getRequestDispatcher("plantilla_proyectos.jsp").forward(request, response);

		} else {

			misession.invalidate();
			response.sendRedirect("login");

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
