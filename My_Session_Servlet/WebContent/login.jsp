<!DOCTYPE html>
<html>

<jsp:include page="head.jsp"></jsp:include>

<%
	String mierror = (String) request.getAttribute("mierror");
	String errorclass = mierror != null ? "has-error" : "";
%>

<body>

	<div class="container">
		<div class="row">
			<div class="Absolute-Center is-Responsive Login-Form">

				<header>
					<h2>Log In</h2>
				</header>

				<%
					if (request.getAttribute("mierror") != null) {
				%>
				<div class="alert alert-danger text-center">
					<strong><%=request.getAttribute("mierror")%></strong>
				</div>
				<%
					}
				%>
				<section>
					<form method="post" action="login" id="loginForm"  novalidate>
						<div class="form-group <%=errorclass%>">
							<label for="email">Correo electrónico: </label> <input
								class="form-control" type="email" name="email" id="email"
								placeholder="email@ejemplo.com" value="ricardo@r.es" required>
							<div class="mensajes_error">
								<div id="email[valueMissing]" class="errorP">Introduzca
									sus datos.</div>
								<div id="email[typeMismatch]" class="errorP">El formato no
									se corresponde con un email.</div>
							</div>
						</div>
						<div class="form-group <%=errorclass%>">
							<label for="pass">Contraseña: </label> <input
								class="form-control" type="password" name="password" id="pass" value="qwerty"
								placeholder="Contraseña" minlength="6" pattern="[a-z 0-9]*"
								required>
							<div class="mensajes_error">
								<div id="pass[valueMissing]" class="errorP">Introduzca sus
									datos.</div>
								<div id="pass[tooShort]" class="errorP">El password debe
									contener como minimo 6 caracteres.</div>
							</div>
						</div>
						<div>
							<input class="btn btn-default pull-right" type="submit"
								form="loginForm" value="Login" id="btnLoginId">
						</div>
					</form>
					<a href="forgotPass.html">Has olvidado tu Password?</a>
				</section>
			</div>
		</div>
	</div>

</body>
<script src="./js/login01.js"></script>
</html>