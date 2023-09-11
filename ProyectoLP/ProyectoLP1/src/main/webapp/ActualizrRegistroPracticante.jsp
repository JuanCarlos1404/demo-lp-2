<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>
body {
  padding: 3rem;
  background-color: #f8f9fa;
  color: #6c757d;
}

.container {
  text-align: center;
  margin-bottom: 2rem;
}

form {
  background-color: white;
  padding: 2rem;
  border-radius: 0.25rem;
}

input[type="text"],
input[type="date"] {
  width: 100%;
  padding: 0.375rem 0.75rem;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

input[type="text"]:focus,
input[type="date"]:focus {
  outline: 0;
  border-color: #80bdff;
  box-shadow: 0 0 0 0.25rem rgba(0, 123, 255, 0.25);
}

.btn-primary,
.btn-secondary {
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
}

.btn-primary {
  background-color: #007bff;
  border-color: #007bff;
}

.btn-primary:hover {
  background-color: #0069d9;
  border-color: #0062cc;
}

.btn-secondary {
  color: #fff;
  background-color: #6c757d;
  border-color: #6c757d;
}

.btn-secondary:hover {
  background-color: #5a6268;
  border-color: #545b62;
}
</style>
</head>

<body>
<br>
<div class="container">
  <h1>Registro de Practicantes</h1>
</div>

<form name="form1" method="get" action="PracticanteServlet">
  <input type="hidden" name="Instruccion" value="actualizarbd">
  <input type="hidden" name="codigopracticante" value="${actPracticante.codpracticante}">
  <br>

  <table class="d-flex justify-content-evenly">
    <tr>
      <td>Nombres:</td>
      <td><input type="text" required placeholder="Ingrese sus nombres" name="txtNombre" value="${actPracticante.nompracticante}"></td>
    </tr>
    <tr>
      <td>Apellidos:</td>
      <td><input type="text" required placeholder="Ingrese sus apellidos" name="txtApellido" value="${actPracticante.apepracticante}"></td>
    </tr>
    <tr>
      <td>DNI:</td>
      <td><input type="text" required placeholder="Ingrese su DNI" name="txtDNI" value="${actPracticante.dni}"></td>
    </tr>
    <tr>
      <td>Número de teléfono:</td>
      <td><input type="text" required placeholder="Ingrese su teléfono" name="txtTelefono" value="${actPracticante.telefono}"></td>
    </tr>
    <tr>
      <td>Dirección:</td>
      <td><input type="text" required placeholder="Ingrese su dirección" name="txtDirecc" value="${actPracticante.direccion}"></td>
    </tr>
    <tr>
      <td>Disponibilidad:</td>
      <td><input type="date" required placeholder="Ingrese su disponibilidad" name="txtDisponibilidad" value="${actPracticante.disponibildad}"></td>
    </tr>

    <tr>
      <td><input type="submit" class="btn btn-primary" id="btnRegistrar" value="Editar Registro"></td>
      <td><button type="reset" class="btn btn-secondary">Restablecer</button></td>
    </tr>
  </table>
</form>

</body>
</html>
