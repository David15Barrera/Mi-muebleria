<%-- 
    Document   : fabricante
    Created on : 26/08/2021, 02:28:14
    Author     : david
--%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Fabricante</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String Usuario;
            String tipo;
            if(sesion.getAttribute("user")!= null && sesion.getAttribute("tipo")!=null){
            Usuario= sesion.getAttribute("user").toString();
            tipo = sesion.getAttribute("tipo").toString();
            out.print("<a href='../index.jsp?cerrar=true'><h5> Cerrar Session  "+ Usuario +"</h5></a>  ");    
            }else{
            out.print("<script>location.replace('../index.jsp');</script>");
            }
            
            %>    
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
           <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="fabricanteindex.jsp">Inicio</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Piezas.jsp" target="myFrame">Piezas</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Muebles.jsp" target="myFrame" >Muebles</a>
              </li>
              <li class="nav-item">
                <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="EnsemPieza.jsp" target="myFrame">Ensamblar Piezas</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="EnsamMueble.jsp" target="myFrame">Ensamblar Mueble</a>
              </li>

            </ul>
          </div>
                <div class="dropdown">
        <button style=" border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Usuario Fabricante
        </button>
            <div class="dropdown-menu text-center">
          <a class="dropdown-item" href="#">
              <img src="../img/Fabri.png" alt="60" width="60"/>
          </a>
                
          <a class="dropdown-item" href="#">Fabricante</a>
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
