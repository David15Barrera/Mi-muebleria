<%-- 
    Document   : puntoventaindex
    Created on : 26/08/2021, 02:29:12
    Author     : david
--%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <title>Ventas</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
           <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="puntoventaindex.jsp">Inicio</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="SalaVentas.jsp" target="myFrame">Sala Ventas</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ClientesView.jsp" target="myFrame" >Clientes</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Compra.jsp" target="myFrame">Compra</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Devoluciones.jsp" target="myFrame">Devoluciones</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Facturas.jsp" target="myFrame">Facturas</a>
              </li>
            </ul>
          </div>
                <div class="dropdown">
        <button style=" border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Usuario Ventas
        </button>
            <div class="dropdown-menu text-center">
          <a class="dropdown-item" href="#">
              <img src="../img/usuarioventas.png" alt="60" width="60"/>
          </a>
                
          <a class="dropdown-item" href="#">Usuario</a>
          <a class="dropdown-item" href="#">Correo@gmail.com</a>
         <div class="dropdown-divider"></div>
         <a class="dropdown-item" href="../index.jsp">Salir</a>         
         </div>
      </div>
        </nav>        
        <div class="m-4" style=" height: 650px;">
            <iframe name="myFrame" style="height: 100%; width: 100%"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
