<%-- 
    Document   : Muebles
    Created on : 3/09/2021, 01:43:05
    Author     : david
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Entidades.MueblesDao"%>
<%@page import="Entidades.Muebles"%>
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
                         <label>Nombre del Mueble</label>
                         <input type="text" name="txtmueb" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Precio del Mueble</label>
                         <input type="text" name="txtprecio" class="form-control">
                     </div>
                     <input type="submit" name="Agregar" value="Agregar" class="btn btn-info">
                 </form>    
                   
<%
        MueblesDao dao = new MueblesDao();
        Muebles u = new Muebles();
      if(request.getParameter("Agregar")!=null){
            String tipo = request.getParameter("txtmueb");
            String costo = request.getParameter("txtprecio");
            u.setIdmueble(tipo);
            u.setPreciomub(costo);
            dao.add(u);
    }  
%>
            </div>    
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <h4>  <center> <label>Sala de Muebles</label></center></h4>
                <thead>

                    <tr>
                        <th>Nombre del Mueble</th>
                        <th>Precio del mueble</th>
                    </tr>
                </thead>
                <tbody>
<%                  

                    List<Muebles>list= dao.listar();
                    Iterator<Muebles>iter=list.iterator();
                    Muebles mueb = null;
                    while (iter.hasNext()){
                    mueb=iter.next();
           %>
                    <tr>
                        <th><%= mueb.getIdmueb()%></th>
                        <th><%= mueb.getIdmueble()%></th>
                        <th><%= mueb.getPreciomub() %></th>
                        <td>

                        </td>
                    </tr>
            <%}

              %>      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 </div>
    </body>
</html>
