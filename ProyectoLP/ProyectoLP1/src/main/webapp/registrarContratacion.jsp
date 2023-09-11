<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Registrar Contratación</title>
</head>
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<h1 class="text-center mb-5">Registrar Practicante Contratado</h1>
				<form method="get" action="ContratacionServlet">
					<input type="hidden" name="action" value="agregar">
					<div class="mb-3">
						<label for="CodPrac" class="form-label">Código Practicante:</label>
						<input type="text" class="form-control" id="CodPrac" name="CodPrac">
					</div>
					<div class="mb-3">
						<label for="nombre" class="form-label">Nombre Practicante:</label>
						<input type="text" class="form-control" id="nombre" name="nombre">
					</div>
					<div class="mb-3">
						<label for="telefono" class="form-label">Teléfono:</label>
						<input type="number" class="form-control" id="telefono" name="telefono">
					</div>
					<div class="mb-3">
						<label for="dni" class="form-label">DNI:</label>
						<input type="number" class="form-control" id="dni" name="dni">
					</div>
					<div class="mb-3">
						<label for="area" class="form-label">Área:</label>
						<input type="text" class="form-control" id="area" name="area">
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