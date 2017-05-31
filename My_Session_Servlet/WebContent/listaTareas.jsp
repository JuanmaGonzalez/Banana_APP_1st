<%@page import="com.juanma.models.Proyectos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp"></jsp:include>

<body>
	<jsp:include page="header.jsp"></jsp:include>

<% 
Proyectos[] listaRecibida = ( Proyectos [])request.getAttribute("listaTareasMostrar");
%>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12 well">

					<h3 class="text-center">Lista de Tareas</h3>

					<table class="table table-striped table-hover">
						<tr>
							<th>Proyectos</th><th>Identificador</th><th>Fecha</th><th>Estado</th>
						</tr>

						<% if(listaRecibida!=null) for(Proyectos maq:listaRecibida){ %>

						<tr>
							<td><b><%=maq.getMarca() %></b></td><td><%=maq.getCodigo() %></td><td><%=maq.getTipo() %></td><td><%=maq.getPrecio() %></td>
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