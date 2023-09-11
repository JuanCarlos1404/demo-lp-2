<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@page import="entidad.Practicante"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>LISTA PRACTICANTE</title>
<style>
.navbar {
    background-color: #f8f9fa;
    padding: 15px;
}
.navbar-brand {
    font-weight: bold;
}
.navbar-brand img {
    height: 30px;
    margin-right: 10px;
    margin-top: 20px;
}
.navbar-nav .nav-link {
    color: #000;
    font-weight: bold;
}
body {
    background-color: white;
    font-family: Arial, sans-serif;
}
.container {
    margin-top: 40px;
}
.title {
    font-size: 30px;
    text-align: center;
    margin-bottom: 20px;
}
</style>

</head>
<%
List<Practicante> listaPracticantes = (List<Practicante>) request.getAttribute("LISTPRACTICANTE");
%>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="principal.jsp">
                <img src="img/logopp.png" alt="Logo de la Gasolinera">
                <span>Gasolinera PetroPerú</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="PracticanteServlet">Practicantes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="CandidatoServlet">Entrevista</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContratacionServlet">Contratacion</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<div class="container">
<h1 class="text-center">Listado de Practicantes</h1>
<table class="table table-striped" id="tablaPracticante">
<thead>
<tr>
<tr>
<th scope="col">Código Practicante</th>
<th scope="col">Nombres de Practicante</th>
<th scope="col">Apellido de Practicante</th>
<th scope="col">DNI</th>
<th scope="col">Teléfono</th>
<th scope="col">Dirección</th>
<th scope="col">Disponibilidad</th>
<th scope="col">Acciones</th>
</tr>
</thead>
<tbody>

<% for (Practicante practicante : listaPracticantes) { %>
<tr>
<td><%= practicante.getCodpracticante() %></td>
<td><%= practicante.getNompracticante() %></td>
<td><%= practicante.getApepracticante() %></td>
<td><%= practicante.getDni() %></td>
<td><%= practicante.getTelefono() %></td>
<td><%= practicante.getDireccion() %></td>
<td><%= practicante.getDisponibildad() %></td>
<td>
<div class="d-flex justify-content-between">
<a class="btn btn-outline-success" href="PracticanteServlet?Instruccion=cargar&cPracticante=<%= practicante.getCodpracticante() %>">Editar</a>
<a class="btn btn-outline-danger" href="PracticanteServlet?Instruccion=eliminar&cPracticante=<%= practicante.getCodpracticante() %>" onclick="return confirmarEliminar()">Eliminar</a>
</div>
</td>
</tr>
<% } %>

</tbody>
</table>

<div class="text-center">
<input class="btn btn-primary" type="button" value="Registrar"
                style="color: #fff; font-weight: 600" onclick="window.location.href='RegistrarPracticante.jsp'" />
</div>
</div>
</body>
<script>
function confirmarEliminar() {
    return confirm("¿Estás seguro de que deseas eliminar este registro?");
}
</script>
</html>
