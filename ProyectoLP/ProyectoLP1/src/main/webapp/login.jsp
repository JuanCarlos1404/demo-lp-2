<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acceder al Sistema</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-8j1Yq70qE1CNFmrb6W7fhhkpH0F0HH8pU7F3I7v6rU1EwbH1SY0tR3E0+HLJu5xmDK3wvwLhW3uWpO+RBFq4+A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    body {
        background-image: url('img/fondologueo.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .container {
        max-width: 400px;
        padding: 20px;
        border: 1px solid #ced4da;
        border-radius: 5px;
        background-color: rgba(255, 255, 255, 0.8);
    }

    h1 {
        text-align: center;
        margin-bottom: 30px;
    }

    .form-control {
        border-radius: 3px;
    }

    .btn-primary {
        width: 100%;
        border-radius: 3px;
    }

    .error-message {
        color: #dc3545;
        font-size: 14px;
        margin-top: 10px;
        text-align: center;
    }
    
    body {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    }
    
</style>
</head>
<body>
    <div class="container">
        <h1>Iniciar Sesión</h1>
        <%
            if(request.getParameter("submit") != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String rememberMe = request.getParameter("rememberMe");
                if(username.equals("admin") && password.equals("admin")) {
                    response.sendRedirect("principal.jsp");
                } else {
                    out.println("<div class=\"alert alert-danger error-message\" role=\"alert\">Usuario o contraseña incorrectos. Inténtalo de nuevo.</div>");
                }
            }%>
        <form class="mt-4" method="post" action="">
            <div class="mb-3">
                <label for="username" class="form-label"><i class="fas fa-user"></i>Usuario:</label>
                <input type="text" class="form-control" id="username" name="username">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label"><i class="fas fa-lock"></i>Contraseña:</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
                <label class="form-check-label" for="rememberMe">Recuérdame</label>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Iniciar sesión</button>
        </form>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
