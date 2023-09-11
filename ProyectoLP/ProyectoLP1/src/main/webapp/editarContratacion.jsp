<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Editar Contratación</title>
</head>
<body>
	<div class="container py-5">
		<h1 class="text-center">Editar Registro</h1>
		<form method="get" action="ContratacionServlet" style="margin: 0 12%">
			<input type="hidden" name="action" value="actualizar">
			<input type="hidden" name="CodPrac" value="${contrato.getCodPracticante()}">
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="CodPrac" class="form-label">Código Practicante:</label>
					<input type="text" class="form-control" id="CodPrac" name="CodPrac" disabled value="${contrato.getCodPracticante()}">
				</div>
				<div class="col-md-6">
					<label for="nombre" class="form-label">Nombres y Apellidos:</label>
					<input type="text" class="form-control" id="nombre" name="nombre" value="${contrato.getNombrePracticante()}">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="telefono" class="form-label">Teléfono:</label>
					<input type="number" class="form-control" id="telefono" name="telefono" value="${contrato.getTelefono()}">
				</div>
				<div class="col-md-6">
					<label for="dni" class="form-label">DNI:</label>
					<input type="number" class="form-control" id="dni" name="dni" value="${contrato.getDni()}">
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="area" class="form-label">Área:</label>
					<input type="text" class="form-control" id="area" name="area" value="${contrato.getArea()}">
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