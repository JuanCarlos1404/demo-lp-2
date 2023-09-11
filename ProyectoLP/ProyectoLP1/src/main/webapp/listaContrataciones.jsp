<%@page import="java.util.List"%>
<%@page import="entidad.Contratacion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Contrataciones</title>
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
            <h1>Listado de Contratados</h1>
        </div>
        <table class="table table-striped" id="tablaContrato">
            <thead>
                <tr>
                    <th scope="col">Codigo Practicante</th>
                    <th scope="col">Nombres</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">DNI</th>
                    <th scope="col">Área</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for (Contratacion contrato : (List<Contratacion>) request.getAttribute("contratos")) { %>
                <tr>
                    <th><%=contrato.getCodPracticante()%></th>
                    <td><%=contrato.getNombrePracticante()%></td>
                    <td><%=contrato.getTelefono()%></td>
                    <td><%=contrato.getDni()%></td>
                    <td><%=contrato.getArea()%></td>
                    <td>
                        <a class="btn btn-outline-success" href="ContratacionServlet?action=mostrar&CodPrac=<%=contrato.getCodPracticante()%>">Editar</a>
                        <a class="btn btn-outline-danger" onclick="Eliminar('<%=contrato.getCodPracticante()%>')">Eliminar</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <div class="d-flex justify-content-center">
            <input class="btn btn-primary" type="button" value="Registrar"
                style="color: #fff; font-weight: 600"
                onclick="window.location.href='registrarContratacion.jsp'">
        </div>
    </div>

    <script>
        function Eliminar(CodPrac) {
            if (confirm("Se borrará este registro. ¿Desea continuar?")) {
                window.location.href = "ContratacionServlet?action=eliminar&CodPrac=" + CodPrac;
            }
        }
    </script>
</body>
</html>
