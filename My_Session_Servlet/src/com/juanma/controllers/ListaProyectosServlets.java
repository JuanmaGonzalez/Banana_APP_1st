package com.juanma.controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession misession = (HttpSession) request.getSession();

		ArrayList<Proyectos> lisProyectostUser = new ArrayList<Proyectos>();

		

		if (misession.getAttribute("idUsuario") != null) {

			Proyectos[] listaProyectos = null;

			SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

			try {
				listaProyectos = new Proyectos[] {
						new Proyectos("ricardo@r.es", "Proyecto de Gestion Ambiental 01", "Ricardo",
								formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true),
						new Proyectos("ricardo@r.es", "Proyecto de Gestion Documental 01", "Ricardo",
								formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), false),
						new Proyectos("juana@j.es", "Proyecto de Gestion Historica 01", "Juana",
								formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true),
						new Proyectos("juana@j.es", "Proyecto de Gestion Ambiental 02", "Juana",
								formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true),
						new Proyectos("luis@l.es", "Proyecto de Gestion Documental 02", "Luis",
								formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), false),
						new Proyectos("luis@l.es", "Proyecto de Gestion Historica 02", "Luis",
								formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true)};

			} catch (Exception e) {
				// TODO: handle exception
			}

			for (Proyectos maq : listaProyectos) {
				if (maq.getIdUsuario().toLowerCase().equals(misession.getAttribute("idUsuario").toString().toLowerCase())) {
					lisProyectostUser.add(maq);
				}
			}


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
