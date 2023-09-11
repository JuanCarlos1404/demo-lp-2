<%@page import="java.util.List"%>
<%@page import="entidad.Candidato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Candidatos</title>
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
        <div class="title">
            <h1>Listado de Candidatos</h1>
        </div>
        <table class="table table-striped" id="tablaCandidato">
            <thead>
                <tr>
                    <th scope="col">Código Candidato</th>
                    <th scope="col">Nombres</th>
                    <th scope="col">Apellidos</th>
                    <th scope="col">Edad</th>
                    <th scope="col">Años de Experiencia</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for (Candidato candidato : (List<Candidato>) request.getAttribute("candidatos")) { %>
                <tr>
                    <th><%=candidato.getIdCandidato()%></th>
                    <td><%=candidato.getNombreCandidato()%></td>
                    <td><%=candidato.getApellidoCandidato()%></td>
                    <td><%=candidato.getEdad()%></td>
                    <td><%=candidato.getExperiencia()%></td>
                    <td>
                        <a class="btn btn-outline-success" href="CandidatoServlet?action=mostrar&id=<%=candidato.getIdCandidato()%>">Editar</a>
                        <a class="btn btn-outline-danger" onclick="Eliminar('<%=candidato.getIdCandidato()%>')">Eliminar</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <div class="d-flex justify-content-center">
            <input class="btn btn-primary" type="button" value="Registrar"
                style="color: #fff; font-weight: 600"
                onclick="window.location.href='registrarCandidato.jsp'">
        </div>
    </div>

    <script>
        function Eliminar(id) {
            if (confirm("Se borrará este registro. ¿Desea continuar?")) {
            	window.location.href = "CandidatoServlet?action=eliminar&id=" + id;
            }
        }
    </script>
</body>
</html>
