<%-- 
    Document   : ReportGanan
    Created on : 3/09/2021, 02:17:41
    Author     : david
--%>

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
                     <center> <label>BUSCAR GANANCIA</label></center>
                     <label></label>    
                     <div class="form-group">
                         <label>Inicio de Fecha de Busqueda</label>
                         <input type="date" name="txtmuni" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Fin de Fecha de Busqueda</label>
                         <input type="date" name="txtdepa" class="form-control">
                     </div>
                     <input type="submit" name="accion" value="buscar" class="btn btn-info">
                    
                    </div>
                    </form> 
                  </div>
                  <%

%>
             </div>
            <div class="col-sm-8">
        <h4>   <center> <label> REPORTE DE GANANCIAS POR FECHAS</label></center></h4>
        <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>ID cliente</th>
                        <th>Fecha de venta</th>
                        <th>Cantidad</th>
                    </tr>
                </thead>
                <tbody>
<%
           %>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <td>
                        </td>
                    </tr>
            <%
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
