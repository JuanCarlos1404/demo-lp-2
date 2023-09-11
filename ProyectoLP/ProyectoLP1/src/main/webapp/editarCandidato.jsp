<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Editar Candidato</title>
</head>
<body>
	<div class="container py-5">
		<h1 class="text-center">Editar Registro</h1>
		<form method="get" action="CandidatoServlet" style="margin: 0 12%">
			<input type="hidden" name="action" value="actualizar">
			<input type="hidden" name="id" value="${candidato.getIdCandidato()}">
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="id" class="form-label">Código Practicante:</label>
					<input type="text" class="form-control" id="id" name="id" disabled value="${candidato.getIdCandidato()}">
				</div>
				<div class="col-md-6">
					<label for="nombres" class="form-label">Nombres:</label>
					<input type="text" class="form-control" id="nombres" name="nombres" value="${candidato.getNombreCandidato()}">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="apellidos" class="form-label">Apellidos:</label>
					<input type="text" class="form-control" id="apellidos" name="apellidos" value="${candidato.getApellidoCandidato()}">
				</div>
				<div class="col-md-6">
					<label for="edad" class="form-label">Edad:</label>
					<input type="number" class="form-control" id="edad" name="edad" value="${candidato.getEdad()}">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="añosexperiencia" class="form-label">Años de Experiencia:</label>
					<input type="number" class="form-control" id="añosexperiencia" name="añosexperiencia" value="${candidato.getExperiencia()}">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<button type="submit" class="btn btn-primary" onclick="return confirm('¿Estás seguro con los datos ingresados?')">Editar Registro</button>
					<button type="reset" class="btn btn-secondary">Restablecer</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>