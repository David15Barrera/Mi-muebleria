<%-- 
    Document   : Index
    Created on : 25/08/2021, 02:39:33
    Author     : david
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="SQLConnector.connectorDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Muebleria</title>
    </head>
    <body style="background: url(img/fondo1.jpg)">
        <div class="container col-lg-3">
            <form action="index.jsp" method="post">
                <div class="form-group text-center">
                    <p><strong>Bienvenidos a MI MUEBLE </strong></p>
                    <img src="img/user.png"/>
                    <p><strong>Iniciar Sesión </strong></p>
                </div>
                <div class="form-group">
                    <b> <label>Usuario</label></b>
                    <input class="form-control" types="text" name="txtnom" placeholder="Ingrese Nombres">
                </div> 
                <div class="form-group">
                    <b><label>Password</label></b>
                    <input class="form-control" type="password" types="text" name="txtcont" placeholder="Ingrese Contraseña">
                </div> 
                <input class="btn btn-danger btn-block" type="submit" name="btningresar" value="ingresar">
            </form>    
            <div class="dropdown">
            <br>
        </div>  
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
        <%    
        connectorDB op = new connectorDB();
        op.connectionDB();
        if (request.getParameter("btningresar")!=null){
            String nombre=request.getParameter("txtnom");
            String contrase=request.getParameter("txtcont");
                 HttpSession sesion = request.getSession();    
            switch(op.USUARIO(nombre, contrase)){
            
                case 1:
                    sesion.setAttribute("user", nombre);
                    sesion.setAttribute("tipo", "1");
                    response.sendRedirect("Fabricante/fabricanteindex.jsp");
                break;
                
                case 2:       
                    sesion.setAttribute("user", nombre);
                    sesion.setAttribute("tipo", "2");
                    response.sendRedirect("PuntoVenta/puntoventaindex.jsp");
                break;
                case 3:       
                    sesion.setAttribute("user", nombre);
                    sesion.setAttribute("tipo", "3");
                    response.sendRedirect("administrador/adminindex.jsp");
                break;
                case 4:
                
                break;
                default:
                out.write("Usuario no existe, o contraseña invalida");
                break;
            }
            if(request.getParameter("cerrar")!=null){
                session.invalidate();
            }
     }
            if (request.getParameter("btningresar")!=null){
                 String nit= "admin";
                 String nom="admin";                 
                 String dire= "3";                 
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
        Encriptar con = new Encriptar();
           
                 try{
        cnx= con.getEncriptar();
        sta=cnx.createStatement();
                  sta.executeUpdate("INSERT INTO USUARIO VALUES('"+nit+"','"+nom+"','"+dire+"')");
                    response.sendRedirect("index.jsp");
                    }catch (Exception e){
                    out.print(" ,Rellenar campos requeridos");
                                        }
                    }
%>   

        </body>
</html>
