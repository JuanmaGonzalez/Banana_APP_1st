package com.juanma.db;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.juanma.models.Proyecto;

public class DBMock {

	private HashMap<String, Proyecto> DB;

	public DBMock() {
		try {
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

			DB = new HashMap<String, Proyecto>();
			
			this.DB.put("1",new Proyecto("ricardo@r.es", "Proyecto de Gestion Ambiental 01", "Ricardo",formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true));
			this.DB.put("2",new Proyecto("ricardo@r.es", "Proyecto de Gestion Documental 01", "Ricardo",formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), false));
			this.DB.put("3",new Proyecto("juana@j.es", "Proyecto de Gestion Historica 01", "Juana",formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true));
			this.DB.put("4",new Proyecto("juana@j.es", "Proyecto de Gestion Ambiental 02", "Juana",formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true));
			this.DB.put("5",new Proyecto("luis@l.es", "Proyecto de Gestion Documental 02", "Luis",formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), false));
			this.DB.put("6",new Proyecto("luis@l.es", "Proyecto de Gestion Historica 02", "Luis",formatter.parse("01-01-2017"), formatter.parse("2018-12-01"), true));

		} catch (

		Exception e) {
			// TODO: handle exception
		}
	}

	public Proyecto getProject(String idP) {
		return null;
	}

	public List<Proyecto> getUserProjects(String idUser) {
		ArrayList<Proyecto> lisProyectostUser = new ArrayList<Proyecto>();

		for (String projID : DB.keySet()) {
			Proyecto proj=DB.get(projID);
			if (proj.getIdUsuario().equals(idUser)) {
				lisProyectostUser.add(proj);
			}
		}

		return lisProyectostUser;
	}

}
