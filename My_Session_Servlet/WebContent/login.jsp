<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<jsp:include page="head.jsp"></jsp:include>

<%
	String mierror = (String) request.getAttribute("mierror");
	String errorclass = mierror != null ? "has-error" : "";
%>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div class="col-md-4  col-md-offset-4 jumbotron">
				<h2 class="text-center">Formulario de Login</h2>


				<c:if test="$(not empty mierror)">
					<div class="alert alert-danger text-center">
						<strong><c:out value="mierror"></c:out></strong>
					</div>
				</c:if>
				<form action="login" method="POST" class="form-horizontal">

					<div class="form-group <%=errorclass%>">
						<label><b>Correo electrónico</b></label> <input
							class="form-control" type="email"
							placeholder="Correo electrónico" name="email">
					</div>
					<div class="form-group <%=errorclass%>">
						<label><b>Contraseña</b></label> <input class="form-control"
							type="password" placeholder="Contraseña" name="password">
					</div>

					<div>
						<button class="btn btn-default pull-right">Login</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>