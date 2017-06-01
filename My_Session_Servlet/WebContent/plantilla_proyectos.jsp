<%@page import="java.util.ArrayList"%>
<%@page import="com.juanma.models.Proyectos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp"></jsp:include>

<body>
	<jsp:include page="header.jsp"></jsp:include>

<% 
ArrayList<Proyectos> listaRecibida = (ArrayList<Proyectos>)request.getAttribute("listaProyectosMostrar");
%>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12 well">

					<h3 class="text-center">Lista de Proyectos</h3>

					<table class="table table-striped table-hover">
						<tr>
							<th>Detalle Proyecto</th><th>Identificador</th><th>Usuario</th><th>Proyecto</th><th>Responsable</th><th>Fecha Activación</th><th>Fecha Prevista Fina</th><th>Proyecto Activo</th>
						</tr>

						<% if(listaRecibida!=null) for(Proyectos maq:listaRecibida){ %>

						<tr>
							<td><a href="detalle_proyecto?idProyecto=<%=maq.getTitulo()%>"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span></a></td><td><%=maq.getCodigo()%></td> <td><%=maq.getIdUsuario()%></td> <td><%=maq.getTitulo() %></td><td><%=maq.getResponsable()%></td><td><%=maq.getFechaActivacion()%></td><td><%=maq.getFechaPrevistaFinal()%></td><td><%=maq.isActivo()%></td>
						</tr>

						<%} %>

					</table>
					
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>