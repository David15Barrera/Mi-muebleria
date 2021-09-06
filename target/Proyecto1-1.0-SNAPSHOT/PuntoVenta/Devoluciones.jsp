<%-- 
    Document   : Devoluciones
    Created on : 3/09/2021, 12:34:01
    Author     : david
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
java.sql.Date sqlDate = new java.sql.Date(System.currentTimeMillis());
        %>
        <h4>   <center> <label> METODO DE DEVOLUCION</label></center></h4>
        <br>
  <div class="d-flex">
        <div class="card col-sm-4"> 
            <div class="card-body"> 
                <form> 
                     <div class="form-group">
                     <center> <label>REGISTRAR DEVOLUCION</label></center>
                     <label></label>    
                     <label>Nit</label>
                         <input type="text" name="txtnit" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Nombre del Mueble</label>
                         <input type="text" name="txtmue" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Cantidad de articulos</label>
                         <input type="text" name="txtdire" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Precio de venta</label>
                         <input type="text" name="txtmuni" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Fecha</label>
                         <input type="date" name="txtdepa" class="form-control">
                     </div>
                     <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                 </form>    
                   
<%
     
       Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
        Encriptar con = new Encriptar();
    if (request.getParameter("accion")!=null){
                 String nit=request.getParameter("txtnit");
                 String nom=request.getParameter("txtmue");                 
                 String dire=request.getParameter("txtdire");                 
                 String muni=request.getParameter("txtmuni");                
                 String depa=request.getParameter("txtdepa");

                 
                 try{
        cnx= con.getEncriptar();
        sta=cnx.createStatement();
        //rs=sta.executeQuery("");
                  sta.executeUpdate("INSERT INTO DEVOLUCION (nitcliente,nommueble,cantidadDev,PrecioDev,fechadev) VALUES('"+nit+"','"+nom+"','"+dire+"','"+muni+"','"+depa+"')");
                    response.sendRedirect("Devoluciones.jsp");
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                                        }
                    }%>
            </div>    
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nit</th>
                        <th>Nombre del Mueble</th>
                        <th>Cantidad</th>
                        <th>Precio venta</th>
                        <th>Fecha</th>
                    </tr>
                </thead>
                <tbody>
<%     
        try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        rs=sta.executeQuery("SELECT * FROM DEVOLUCION");
        
        while(rs.next()){                
           %>
                    <tr>
                        <th><%=rs.getString(1)%></th>
                        <th><%=rs.getString(2)%></th>
                        <th><%=rs.getString(3)%></th>
                        <th><%=rs.getString(4)%></th>
                        <th><%=rs.getString(5)%></th>
                        <th><%=rs.getString(6)%></th>
                        <td>
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
