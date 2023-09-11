<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body class="p-3 mb-2 bg-secondary-subtle text-emphasis-secondary">
 <br>
  <div >
<h1 class="container text-center">Registro de Practicantes</h1>
  </div>
  
<form name="form1" method="get" action="PracticanteServlet">
<input type="hidden" name="Instruccion" value="insertarbd">
   <br>
   
     <table class="d-flex justify-content-evenly">
            <tr>
           <td>Código Practicante:</td>
           <td><input type="text" required class="form-control" placeholder="Ingrese el código" name="codigopracticante"/></td>
         </tr>
         <tr>
         <tr>
           <td>Nombres:</td>
           <td><input type="text" required class="form-control" placeholder="Ingrese sus nombres" name="txtNombre"/></td>
         </tr>
         <tr>
           <td>Apellidos:</td>
           <td><input type="text" required class="form-control" placeholder="Ingrese sus apellidos" name="txtApellido"/></td>
         </tr>
         <tr>
           <td>DNI:</td>
           <td><input type="text" required class="form-control" placeholder="Ingrese su DNI" name="txtDNI"/></td>
         </tr>
         <tr>
           <td>Número de teléfono:</td>
           <td><input type="text" required class="form-control" placeholder="Ingrese su teléfono" name="txtTelefono"/></td>
         </tr>
         <tr>
           <td>Dirección:</td>
           <td><input type="text" required class="form-control" placeholder="Ingrese su dirección" name="txtDirecc"/></td>
         </tr>
         <tr>
           <td>Disponibilidad:</td>
           <td><input type="date" required class="form-control" placeholder="Ingrese su disponibilidad" name="txtDisponibilidad"/></td>
         </tr>
        
         <tr> 
       
            <td><input type="submit" class="btn btn-primary" id="btnRegistrar" value="Registrar"/></td>
            <td><button type="reset" class="btn btn-secondary">Restablecer</button></td>
        </tr>
     </table>
     
   </form>
<script>
  window.onload = function() {
    var fechadehoy = new Date();
    var botondisponibilidad = document.querySelector('input[name="txtDisponibilidad"]');
    botondisponibilidad.value = fechadehoy.toISOString().split('T')[0];
  };
</script>
</body>

</html>
