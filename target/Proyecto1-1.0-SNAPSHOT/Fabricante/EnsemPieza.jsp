<%-- 
    Document   : EnsemPieza
    Created on : 3/09/2021, 01:43:41
    Author     : david
--%>

<%@page import="Entidades.PiezasDao"%>
<%@page import="Entidades.Piezas"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="Entidades.MueblesDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="Entidades.Muebles"%>
<%@page import="Entidades.Muebles"%>
<%@page import="java.util.List"%>
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
        <div class="card col-sm-4"> 
            <div class="card-body"> 
                 <form> 
                     <div class="form-group">
                     <center> <label>Crear Nuevo Mueble</label></center>
                         <label>Cantidad de piezas</label>
                         <input type="text" name="txtmueb" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Codigo del mueble a ensamblar</label>
                         <input type="text" name="txtprecio" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Codigo de piezas a usar</label>
                         <input type="text" name="txtcod" class="form-control">
                     </div>                     
                     <input type="submit" name="Agregar" value="Agregar" class="btn btn-info">
                 </form>    
                   
<%
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
        Encriptar con = new Encriptar();

        if(request.getParameter("Agregar")!=null){
            String tipo = request.getParameter("txtmueb");
            String costo = request.getParameter("txtprecio");
           String cod = request.getParameter("txtcod");
        try{
        cnx= con.getEncriptar();
        sta=cnx.createStatement();

                  sta.executeUpdate("INSERT INTO ENSAMPIEZA (cantidadpiez,muebleensam,piezaensam) VALUES('"+tipo+"','"+costo+"','"+cod+"')");
                   response.sendRedirect("EnsemPieza.jsp");
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                                        }
                    }
  
%>
            </div>    
        </div>
        
                     <div class="col-sm-8">
            <table class="table table-hover">
                                     <center><b> <label>Vistas de Ensmable</label></b></center>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cantidad de Piezas</th>
                        <th>Codigo de Mueble</th>
                        <th>Codigo de Piezas</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody>
 <%     
        try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        rs=sta.executeQuery("SELECT * FROM ENSAMPIEZA");
        
        while(rs.next()){                
           %>
                    <tr>
                        <th><%=rs.getString(1)%></th>
                        <th><%=rs.getString(2)%></th>
                        <th><%=rs.getString(3)%></th>
                        <th><%=rs.getString(4)%></th>
                        <td>
                            <a href="Eliminarpie.jsp?id=<%=rs.getString(1)%>" class="btn btn-danger">Delete</a>
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
                <br>
                <br>                               
                  <table class="table table-hover">
                    <center><b> <label>Vistas de Codigos de muebles disponibles</label></b></center>
                <thead>
                    <tr>
                        <th>Codigo mueble</th>
                        <th>Nombre</th>
                    </tr>
                </thead>
                <tbody>
            <%
                    MueblesDao dao = new MueblesDao();
                    List<Muebles>list= dao.listar();
                    Iterator<Muebles>iter=list.iterator();
                    Muebles mueb = null;
                    while (iter.hasNext()){
                    mueb=iter.next();
           %>
                    <tr>
                        <th><%= mueb.getIdmueb()%></th>
                        <th><%= mueb.getIdmueble()%></th>
                        <td>
                        </td>
                    </tr>
            <%
     }

              %>      
                </tbody>
            </table>   
                <br>
                <br>
                <table class="table table-hover">
                    <center><b> <label>Vistas de Codigos de piezas disponibles</label></b></center>
                <thead>
                    <tr>
                        <th>Codigo mueble</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                <tbody>
            <%
                    PiezasDao dao2 = new PiezasDao();
                    List<Piezas>list2=dao2.listar();
                    Iterator<Piezas>iter1=list2.iterator();
                    Piezas pie = null;
                    while (iter1.hasNext()){
                    pie=iter1.next();
           %>
                    <tr>
                        <th><%= pie.getIdpieza()%></th>
                        <th><%= pie.getTipo() %></th>
                         <th><%= pie.getCosto() %></th>
                        <td>
                        </td>
                    </tr>
            <%
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
