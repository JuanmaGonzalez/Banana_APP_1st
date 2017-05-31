<%@page import="com.juanma.models.Proyectos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp"></jsp:include>
<%
	Proyectos[] listaRecibida = (Proyectos[]) request.getAttribute("infoProyectosMostrar");
%>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12 well">


					<div class="pageTitle ">
						<h1>Proyecto01</h1>
					</div>

					<aside class="col-xs-12 col-sm-3">
						<div class="col-xs-12">
							<ul class="pInfo">
								<li><p>
										<strong>Título del Proyecto:</strong> <span>Proyecto01</span>
									</p></li>
								<li><p>
										<strong>Identificador:</strong> <span>test</span>
									</p></li>
								<li><p>
										<strong>Fecha de entrega:</strong> <span>00/00/00</span>
									</p></li>
								<li><p>
										<strong>Asignada a:</strong> <span>${idUsuario}</span>
									</p></li>
								<li><p>
										<strong>Status:</strong> <span>activo</span>
									</p></li>
							</ul>
						</div>

						<table class="table table-striped table-hover">
							<tr>
								<th>Tareas</th>
								<th></th>
							</tr>

							<tr>
								<td>Tarea 01</td>
								<td><button class="btn_del_Task glyphicon glyphicon-trash"></button></td>
							</tr>
							<tr>
								<td>Tarea 02</td>
								<td><button class="btn_del_Task glyphicon glyphicon-trash"></button></td>
							</tr>
							<tr>
								<td>Tarea 03</td>
								<td><button class="btn_del_Task glyphicon glyphicon-trash"></button></td>
							</tr>
							<tr>
								<td>Tarea 04</td>
								<td><button class="btn_del_Task glyphicon glyphicon-trash"></button></td>
							</tr>
							<tr>
								<td>Tarea 05</td>
								<td><button class="btn_del_Task glyphicon glyphicon-trash"></button></td>
							</tr>
							<tr>
								<td>Tarea 06</td>
								<td><button class="btn_del_Task glyphicon glyphicon-trash"></button></td>
							</tr>



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