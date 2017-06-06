<%@page import="java.util.ArrayList"%>
<%@page import="com.juanma.models.Tarea"%>
<%@page import="com.juanma.models.Proyecto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp"></jsp:include>


<% 
Tarea[] listaRecibida = (Tarea[]) request.getAttribute("listaTareasMostrar");

	Proyectos Proyecto =  (Proyectos)request.getAttribute("proyectoUserAMostrar");
%>

*${listaTareasMostrar}*


<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12 well">


					<div class="pageTitle ">
						<h1><%=Proyecto.getTitulo() %></h1>
					</div>

					<aside class="col-xs-12 col-sm-3">
						<div class="col-xs-12">
					
					
					<ul class="pInfo">
								
								 <li><p>
									 	<strong>Identificador:</strong> <span><%=Proyecto.getCodigo()%></span> 
									</p></li>
								<li><p>
										<strong>Fecha de entrega:</strong> <span><%=Proyecto.getFechaPrevistaFinal()%></span>
									</p></li>
								<li><p>
										<strong>Asignada a:</strong> <span><%=Proyecto.getResponsable()%></span>
									</p></li>
								<li><p>
										<strong>Status:</strong> <span><%=Proyecto.isActivo()%></span>
									</p></li> 
							</ul>
						
						
							
						</div>

						<table class="table table-striped table-hover">
							<tr>
								<th>Identificador</th><th>Tarea</th><th>Responsable</th>
							</tr>
	
							<% 
							
								if(listaRecibida!=null) for(Tarea maq:listaRecibida){ 
								
							%>
	
							<tr>
								<td><%=maq.getCodigo()%></td> <td><%=maq.getTarea() %></td><td><%=maq.getResponsable()%></td>
							</tr>
	
							<% } %>

					</table>

					</aside>
					<article class="col-xs-12 col-sm-9">



						<table class="table table-border">
							<tr>
								<th><h3 class="panel-title">Description</h3></th>
							</tr>

							<tr>
								<td class="pull-left"><p>Lorem ipsum dolor sit amet, consectetur
										adipisicing elit. Quod rerum non temporibus dolore iure
										aperiam modi inventore ipsum alias placeat, neque quisquam
										totam sapiente sequi necessitatibus reprehenderit, accusamus
										possimus laboriosam.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Nostrum sint nulla quia ab ex blanditiis veritatis, nam
										iure rerum, adipisci ea vero magni explicabo architecto
										molestias delectus, quis natus rem.</p></td>
							</tr>
						</table>


						<table class="table table-border">
							<tr>
								<th><h3 class="panel-title">Notes</h3></th>
							</tr>

							<tr>
								<td class="pull-left"><p>Lorem ipsum dolor sit amet, consectetur
										adipisicing elit. Quod rerum non temporibus dolore iure
										aperiam modi inventore ipsum alias placeat, neque quisquam
										totam sapiente sequi necessitatibus reprehenderit, accusamus
										possimus laboriosam.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Nostrum sint nulla quia ab ex blanditiis veritatis, nam
										iure rerum, adipisci ea vero magni explicabo architecto
										molestias delectus, quis natus rem.</p></td>
							</tr>
						</table>

					</article>

				</div>
			</div>
		</div>
	</section>






</body>

<script src="./js/home.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<jsp:include page="footer.jsp"></jsp:include>
</html>