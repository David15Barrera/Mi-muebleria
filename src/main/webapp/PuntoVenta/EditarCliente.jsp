<%-- 
    Document   : EditarCliente
    Created on : 31/08/2021, 02:07:43
    Author     : david
--%>

<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
          <body>
               <div class="d-flex">
        <div class="card col-sm-4"> 
            <div class="card-body"> 
                <form> 
                     <%     
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
          Encriptar con = new Encriptar();
        String nit2 = request.getParameter("nit");
        try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        rs=sta.executeQuery("SELECT * FROM CLIENTE where nit='"+nit2+"'");
        
        while(rs.next()){            
           %>
                     <div class="form-group">
                         <label>Nit</label>
                         <input type="text" name="txtnit" value="<%=rs.getString(1)%>" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Nombre</label>
                         <input type="text" name="txtnom" value="<%=rs.getString(2)%>" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Direccion</label>
                         <input type="text" name="txtdire" value="<%=rs.getString(3)%>" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Municipio</label>
                         <input type="text" name="txtmuni" value="<%=rs.getString(4)%>" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Departamento</label>
                         <input type="text" name="txtdepa" value="<%=rs.getString(5)%>" class="form-control">
                     </div>
                         
                     <input type="submit" name="actuar2" value="Actualizar" class="btn btn-info">
                     <input type="submit" name="Cancelar" value="Cancelar" class="btn btn-info">
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
if (request.getParameter("Cancelar")!=null){
response.sendRedirect("ClientesView.jsp");
}
            if (request.getParameter("actuar2")!=null){
                 String nit=request.getParameter("txtnit");
                 String nom=request.getParameter("txtnom");                 
                 String dire=request.getParameter("txtdire");                 
                 String muni=request.getParameter("txtmuni");                
                 String depa=request.getParameter("txtdepa");    
                 
                 sta.executeUpdate("update CLIENTE set  nombre='"+nom+"',direccion='"+dire+"',municipio='"+muni+"',departamento='"+depa+"' where nit='"+nit+"'");
                  response.sendRedirect("ClientesView.jsp");
                    }
           %>
                   <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>NIT</th>
                        <th>Nombre</th>
                        <th>Direccion</th>
                        <th>Municipio</th>
                        <th>Departamento</th>
                    </tr>
                </thead>
                <tbody>
 <%     
        try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        rs=sta.executeQuery("SELECT * FROM CLIENTE");
        
        while(rs.next()){                
           %>
                    <tr>
                        <th><%=rs.getString(1)%></th>
                        <th><%=rs.getString(2)%></th>
                        <th><%=rs.getString(3)%></th>
                        <th><%=rs.getString(4)%></th>
                        <th><%=rs.getString(5)%></th>
                        <td>
                            <a href="EditarCliente.jsp?nit=<%=rs.getString(1)%>" class="btn btn-warning">Editar</a>
                            <a href="EliminarCliente.jsp?cod=<%=rs.getString(1)%>" class="btn btn-danger">Delete</a>
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
