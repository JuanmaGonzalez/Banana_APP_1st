
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Banana GEST Tarea</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rock+Salt" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	<link rel="stylesheet" href="./style/bootstrap.css">
	<link rel="stylesheet" href="./style/style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<section class="container-fluid">
			<ol class="breadcrumb">
				<li><a href="home.html">Home</a></li>
				<li><a href="project.html">Proyecto</a></li>
				<li class="active">Tarea</li>
			</ol>
			<div class="pageTitle ">
				<h1>Tarea 1</h1>
			</div>
			<article class="row">
				<div class="buttons col-xs-12 col-sm-4 col-sm-offset-8">
					<a href="project.html" class="btn"><span class="glyphicon glyphicon-trash"></span> Borrar Tarea</a>
					<a href="editT.html" class="btn">Editar Tarea</a>
				</div>
			</article>
			<aside class="col-xs-12 col-sm-3">
				<div class="col-xs-12">
					<ul class="pInfo">
						<li>
							<p>Título del Proyecto: <span>Proyecto 1</span></p>
						</li>
						<!--Asignacion para el identificador --> 
						<li>
							<p>Identificador <span></span></p>
						</li>
						<li>
							<p>Fecha de entrega: <span>00/00/00</span></p>
						</li>
						<li>
							<p>Asignada a: <span>Pepito</span></p>
						</li>
						<li>
							<p>Status: <span>activo</span></p>
						</li>
					</ul>
				</div>
				<div class="panel panel-default col-xs-12">
					<div class="panel-heading">
						<h3 class="panel-title">Documentos</h3>
					</div>
					<div class="panel-body">
						<ul class="fileList">
							<li class="row" id="t1File1">
								<div class="col-xs-6">
									<button>Archivo1</button>
								</div>
								<div class="col-xs-6">
									<button class="btn_del_Task glyphicon glyphicon-trash" aria-label="deleteTaskBtn" data_Id="t1File1"></button>
								</div>
							</li>
							<li class="row" id="t1File2">
								<div class="col-xs-6">
									<button>Archivo2</button>
								</div>
								<div class="col-xs-6">
									<button class="btn_del_Task glyphicon glyphicon-trash" aria-label="deleteTaskBtn" data_Id="t1File2"></button>
								</div>
							</li>
							<li class="row" id="t1File3">
								<div class="col-xs-6">
									<button>Archivo3</button>
								</div>
								<div class="col-xs-6">
									<button class="btn_del_Task glyphicon glyphicon-trash" aria-label="deleteTaskBtn" data_Id="t1File3"></button>
								</div>
							</li>
							<li class="row" id="t1File4">
								<div class="col-xs-6">
									<button>Archivo4</button>
								</div>
								<div class="col-xs-6">
									<button class="btn_del_Task glyphicon glyphicon-trash" aria-label="deleteTaskBtn" data_Id="t1File4"></button>
								</div>
							</li>
							<li class="row" id="t1File5">
								<div class="col-xs-6">
									<button>Archivo5</button>
								</div>
								<div class="col-xs-6">
									<button class="btn_del_Task glyphicon glyphicon-trash" aria-label="deleteTaskBtn" data_Id="t1File5"></button>
								</div>
							</li>
							<li class="row" id="t1File6">
								<div class="col-xs-6">
									<button>Archivo6</button>
								</div>
								<div class="col-xs-6">
									<button class="btn_del_Task glyphicon glyphicon-trash" aria-label="deleteTaskBtn" data_Id="t1File6"></button>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</aside>
			<article class="col-xs-12 col-sm-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Description</h3>
					</div>
					<div class="panel-body">
					    <div class="box1 textBox">
					    	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod rerum non temporibus dolore iure aperiam modi inventore ipsum alias placeat, neque quisquam totam sapiente sequi necessitatibus reprehenderit, accusamus possimus laboriosam.
					    	</p>
					    	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum sint nulla quia ab ex blanditiis veritatis, nam iure rerum, adipisci ea vero magni explicabo architecto molestias delectus, quis natus rem.
					    	</p>
					    </div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Notes</h3>
					</div>
					<div class="panel-body">
					    <div class="box1 textBox">
					    	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod rerum non temporibus dolore iure aperiam modi inventore ipsum alias placeat, neque quisquam totam sapiente sequi necessitatibus reprehenderit, accusamus possimus laboriosam.
					    	</p>
					    </div>
					</div>
				</div>
			</article>			
		</section>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
<script src="./js/home.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>