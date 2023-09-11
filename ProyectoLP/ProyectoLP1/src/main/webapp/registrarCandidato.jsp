<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Registrar Candidato</title>
</head>
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<h1 class="text-center mb-5">Registrar Candidato</h1>
				<form method="get" action="CandidatoServlet">
					<input type="hidden" name="action" value="agregar">
					<div class="mb-3">
						<label for="id" class="form-label">Código Candidato:</label>
						<input type="text" class="form-control" id="id" name="id">
					</div>
					<div class="mb-3">
						<label for="nombres" class="form-label">Nombres:</label>
						<input type="text" class="form-control" id="nombres" name="nombres">
					</div>
					<div class="mb-3">
						<label for="apellidos" class="form-label">Apellidos:</label>
						<input type="text" class="form-control" id="apellidos" name="apellidos">
					</div>
					<div class="mb-3">
						<label for="edad" class="form-label">Edad:</label>
						<input type="number" class="form-control" id="edad" name="edad">
					</div>
					<div class="mb-3">
						<label for="añosexperiencia" class="form-label">Años de Experiencia:</label>
						<input type="number" class="form-control" id="añosexperiencia" name="añosexperiencia">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Registrar</button>
						<button type="reset" class="btn btn-secondary">Restablecer</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>