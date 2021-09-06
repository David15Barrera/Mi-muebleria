<%-- 
    Document   : adminindex
    Created on : 26/08/2021, 02:29:21
    Author     : david
--%>
<%@page import="Entidades.Cliente"%>
<%@page import="Entidades.ClienteDao"%>
<%@page import="java.util.List"%>
<%@page import="SQLConnector.connectorDB"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Admin</title>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-light bg-info">
           <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="adminindex.jsp">Inicio</a>
              </li>
              <li class="nav-item ">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" target="myFrame" href="Empleados.jsp">Empleado</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Clie.jsp" name="cliente" target="myFrame" >Clientes</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ReporVentas.jsp" target="myFrame">Reporte ventas</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ReportDevol.jsp" target="myFrame">Devoluciones</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ReportMasGanancias.jsp" target="myFrame">Mas Ganancias</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ReportMasVentas.jsp" target="myFrame">Mejor Ventas</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ReportMubleMenosVend.jsp" target="myFrame">Mubles Menos vendidos</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="ReportMuebleVendido.jsp" target="myFrame">Mubles mas vendidos</a>
              </li>
                            
            </ul>
          </div>
                <div class="dropdown">
        <button style=" border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Usuario Admin
        </button>
            <div class="dropdown-menu text-center">
          <a class="dropdown-item" href="#">
              <img src="../img/Admin.png" alt="60" width="60"/>
          </a>
                
          <a class="dropdown-item" href="#">Usuario Ventas</a>
         <div class="dropdown-divider"></div>
         <a class="dropdown-item" href="../index.jsp">Salir</a>         
         </div>
      </div>
        </nav>        
        <div class="m-4" style=" height: 650px;">
            <iframe name="myFrame" style="height: 100%; width: 100%;"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 
         <%    %>   
        
    </body>
</html>
