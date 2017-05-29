<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Banana GEST Login</title>
	
	<link href="https://fonts.googleapis.com/css?family=Rock+Salt" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	<link rel="stylesheet" href="./css/bootstrap.css">
	<link rel="stylesheet" href="./css/login.css">
	
</head>


<%
	String mierror = (String) request.getAttribute("mierror");
	String errorclass = mierror != null ? "has-error" : "";
%>

<body>

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
</body>
</html>