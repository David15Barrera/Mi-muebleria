<%-- 
    Document   : EditEmpleado
    Created on : 2/09/2021, 12:36:07
    Author     : david
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.util.Iterator"%>
<%@page import="Entidades.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <title>JSP Page</title>
    </head>
    <body>
       <div class="d-flex">     
        <div class="card col-sm-5"> 
            <div class="card-body"> 
                <form> 
       <%           
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;   
       
        String nit2 = request.getParameter("nit");
        Encriptar con = new Encriptar();
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        try{
        rs=sta.executeQuery("SELECT * FROM USUARIO where idnombre='"+nit2+"'");
        
        while(rs.next()){       
       %>
                    <center> <label>Crear Nuevo Usuario</label></center>
                     <div class="form-group">
                         <label>Nombre de usuario</label>
                         <input type="text" name="txtnit" value="<%=rs.getString(1)%>" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Password</label>
                         <input type="text" name="txtnom" value="<%=rs.getString(2)%>" class="form-control">
                     </div>
                     <div class="form-group">
                         <center>  <label>Tipo de usuario</label> </center>
                         <center>  <h6>1= Fabrica   2= Ventas    3= Administrador</h6> </center>
                         <h5>Tipo</h5>
                         <input type="text" name="txtdire" maxlength="1" value="<%=rs.getString(3)%>" class="form-control">
                     </div>
                         
                     <input type="submit" name="actuar" value="Actualizar" class="btn btn-info">
                 </form> 
                      </div>    
        </div>
                               <%     
                sta.close();
                rs.close();
                cnx.close();
                } 
                    }catch(Exception e){
                
                    }
            if (request.getParameter("actuar")!=null){
                 String nit=request.getParameter("txtnit");
                 String nom=request.getParameter("txtnom");                 
                 String dire=request.getParameter("txtdire");    
                 
                 sta.executeUpdate("update USUARIO set  password='"+nom+"',tipo='"+dire+"' where idnombre='"+nit+"'");
                  response.sendRedirect("Empleados.jsp");
                    }
           %>
                   <div class="col-sm-7">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Contraseña</th>
                        <th>Tipo Usuario</th>
                    </tr>
                </thead>
                <tbody>
                    <%     
        try{
     //   cnx=con.getEncriptar();
     //   sta=cnx.createStatement();
        rs=sta.executeQuery("SELECT * FROM USUARIO");
        
        while(rs.next()){                
           %>
                    <tr>
                        <th><%=rs.getString(1)%></th>
                        <th><%=rs.getString(2)%></th>
                        <th><%=rs.getString(3)%></th>
                        <td>
                            <a href="EditEmpleado.jsp?nit=<%=rs.getString(1)%>" class="btn btn-warning">Editar</a>
                            <a href="DeleteUser.jsp?cod=<%=rs.getString(1)%>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                           <%
     }
                sta.close();
                rs.close();
                cnx.close();
                    }catch(Exception e){
    
                    }
 

              %>     
                </tbody>
            </table>   
        </div>
                </div> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>      
 
    </body>
</html>
