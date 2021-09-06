<%-- 
    Document   : Piezas
    Created on : 28/08/2021, 00:01:46
    Author     : david
--%>

<%@page import="java.util.Iterator"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="Entidades.Piezas"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.PiezasDao"%>
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
                 <form accion="${pagecontext.request.contextpath}/Controlador"> 
                     <div class="form-group">
                     <center> <label>Crear Nueva Pieza</label></center>
                         <label>Tipo de pieza</label>
                         <input type="hidden" name="txtid" class="form-control">
                         <input type="text" name="txtipieza" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Costo</label>
                         <input type="text" name="txtcosto" class="form-control">
                     </div>
                     <input type="submit" name="Agregar" value="Agregar" class="btn btn-info">
                 </form>    
                   
<%
    PiezasDao dao = new PiezasDao();
    Piezas u= new Piezas();
if(request.getParameter("Agregar")!=null){
            String tipo = request.getParameter("txtipieza");
            String costo = request.getParameter("txtcosto");
            u.setTipo(tipo);
            u.setCosto(costo);
            dao.add(u);    }
%>
            </div>    
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                                        <tr>
                        <th>ID</th>
                        <th>Tipo de pieza</th>
                        <th>Costo</th>
                    </tr>
                </thead>
                    <%  
                //    PiezasDao dao = new PiezasDao();
                    List<Piezas>list=dao.listar();
                    Iterator<Piezas>iter=list.iterator();
                    Piezas pie = null;
                    while (iter.hasNext()){
                    pie=iter.next();
                        
                    %>

                <tbody>
<%%>
                    <tr>
                        <th><%= pie.getIdpieza()%></th>
                        <th><%= pie.getTipo() %></th>
                        <th><%= pie.getCosto() %></th>
                        <td>
                            <a href="EditMueble.jsp?editar=<%= pie.getIdpieza()%>" class="btn btn-warning">Editar</a>
                           <a href="Eliminar.jsp?id=<%= pie.getIdpieza()%>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                    <%}
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
