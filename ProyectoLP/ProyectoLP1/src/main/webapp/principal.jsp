<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Página Principal</title>
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

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f0f0f0;
}

.logout-button {
  font-weight: bold;
  background-color: #dc3545;
  border-color: #dc3545;
  margin-top: 20px;
}

.logout-button:hover {
  background-color: #c82333;
  border-color: #bd2130;
}

h1 {
  font-size: 30px;
  text-align: center;
  margin-bottom: 20px;
  color: #333;
}

p {
  font-size: 18px;
  line-height: 1.5;
  margin-bottom: 30px;
  color: #444;
}

img {
  max-width: 100%;
  height: auto;
  margin-bottom: 20px;
}

.logout-button {
  position: absolute;
  top: 15px;
  right: 15px;
}

body {
  background-color: #979292;
  font-family: Arial, sans-serif;
}

.container {
  background-color: #FFFFFF;
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-top: 50px;
  text-align: center;
  margin-bottom: 50px;
}

h1 {
  color: #333;
}

p {
  color: #555;
}

.logout-button {
  font-weight: bold;
}

.content-container {
  background-color: #FFFFFF;
  padding: 20px;
  border-radius: 8px;
  margin-top: 20px;
}

.social-icons {
  margin-top: 20px;
}

.social-icons a {
  display: inline-block;
  margin-right: 10px;
}

.social-icons img {
  height: 30px;
}

.carousel {
  margin-top: 30px;
}

.carousel-item img {
  height: 400px;
  object-fit: cover;
}

</style>
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
      <a class="navbar-brand d-flex align-items-center" href="principal.jsp">
        <img src="img/logopp.png" alt="Logo de la Gasolinera">
        <span>Gasolinera PetroPerú</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="PracticanteServlet">Practicantes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="CandidatoServlet">Entrevista</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ContratacionServlet">Contratación</a>
          </li>
        </ul>
      </div>
      <a href="login.jsp" class="logout-button btn btn-outline-light">Cerrar Sesión</a>
    </div>
  </nav>
  <div class="container">
    <div class="content-container">
      <h1>Bienvenido a la Gasolinera PetroPerú</h1>
      <p>Este proyecto de selección de practicantes en una empresa 
      petrolera tiene como objetivo identificar y seleccionar a los candidatos 
      adecuados para contribuir al éxito de la empresa, proporcionar una experiencia 
      valiosa de aprendizaje a los practicantes, integrarlos en el equipo de trabajo y fomentar un 
      ambiente de trabajo colaborativo. Este proceso también incluye la evaluación del desempeño de los 
      practicantes y la identificación de áreas de mejora en el proceso para futuras prácticas.</p>
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="img/petroperu.png" class="d-block w-10" alt="Slide 1">
          </div>
          <div class="carousel-item">
            <img src="img/petroperu2.png" class="d-block w-10" alt="Slide 2">
          </div>
          <div class="carousel-item">
            <img src="img/petroperu3.png" class="d-block w-10" alt="Slide 3">
          </div>
        </div>
      </div>
      <div class="social-icons">
        <a href="https://www.facebook.com/tu_pagina_de_facebook" target="_blank"><img src="img/facebook.png" alt="Facebook"></a>
        <a href="https://www.twitter.com/tu_cuenta_de_twitter" target="_blank"><img src="img/twitter.png" alt="Twitter"></a>
        <a href="https://api.whatsapp.com/send?phone=+1234567890" target="_blank"><img src="img/whatsapp.png" alt="WhatsApp"></a>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
