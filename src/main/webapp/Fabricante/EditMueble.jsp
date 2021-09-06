<%-- 
    Document   : EditMueble
    Created on : 4/09/2021, 21:37:59
    Author     : david
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.PiezasDao"%>
<%@page import="Entidades.Piezas"%>
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
                      <%    
                      PiezasDao dao = new PiezasDao();
                      Piezas u= new Piezas();
try{


                      request.setAttribute("edit", request.getParameter("editar"));
                      int idp = Integer.parseInt((String)request.getAttribute("edit"));
                      Piezas t=(Piezas)dao.listarid(idp);
                %>
                     <div class="form-group">
                     <center> <label>Modificar Pieza</label></center>
                     <input type="hidden" name="txtid" value="<%= t.getIdpieza() %>" class="form-control">
                         <label>Tipo de pieza</label>
                         <input type="text" name="txtipieza" value="<%= t.getTipo() %>" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Costo</label>
                         <input type="text" name="txtcosto" value="<%= t.getCosto() %>" class="form-control">
                     </div>
                        <input type="submit" name="Actualizar" value="Actualizar" class="btn btn-info">
                       <input type="submit" name="Cancelar" value="Cancelar" class="btn btn-info">
                 </form>  
            </div>
        </div>
          

                         <%
                             
                                     }catch (Exception e){
                          
                          }
if (request.getParameter("Cancelar")!=null){
response.sendRedirect("Piezas.jsp");
}
           if(request.getParameter("Actualizar")!=null){
            int pies;
            pies= Integer.parseInt(request.getParameter("txtid"));
            String tipo = request.getParameter("txtipieza");
            String costo = request.getParameter("txtcosto");
            u.setIdpieza(pies);
            u.setTipo(tipo);
            u.setCosto(costo);
            dao.edit(u);
response.sendRedirect("Piezas.jsp");
            }

                %> 
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
