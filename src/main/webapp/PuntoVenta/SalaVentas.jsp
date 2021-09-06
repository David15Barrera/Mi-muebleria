<%-- 
    Document   : SalaVentas
    Created on : 27/08/2021, 16:51:33
    Author     : david
--%>

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
        <br><!-- comment -->
        <br>
    <center> <div class="d-flex" >
 
                   
<%
        MueblesDao dao = new MueblesDao();
        Muebles u = new Muebles();
      if(request.getParameter("Agregar")!=null){

    }  
%>
            </div>    
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <h4>  <center> <label>Sala de Ventas</label></center></h4>
                <br>
                <br>
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
        </center>
    </body>
</html>
