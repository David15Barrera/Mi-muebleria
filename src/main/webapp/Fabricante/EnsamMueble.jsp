<%-- 
    Document   : EnsamMueble
    Created on : 3/09/2021, 01:43:30
    Author     : david
--%>

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
     <%     HttpSession sesion = request.getSession();
            String Usuario;
            Usuario= sesion.getAttribute("user").toString();
              %>
              <div class="d-flex">
        <div class="card col-sm-4"> 
            <div class="card-body"> 
                 <form> 
                     <div class="form-group">
                     <center> <label>Ensambles de Muebles</label></center>
                         <label>Usuario</label>
                         <input type="text" name="txtmueb" placeholder="Fabricante" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Mueble</label>
                         <input type="text" name="txtprecio" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Fecha de ensamble</label>
                         <input type="date" name="txtensam" class="form-control">
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
           String cod = request.getParameter("txtensam");
        try{
        cnx= con.getEncriptar();
        sta=cnx.createStatement();

                  sta.executeUpdate("INSERT INTO ENSAMUEBLE (sammueble,fechaensam,creadoruser) VALUES('"+costo+"','"+cod+"','"+tipo+"')");
                   response.sendRedirect("EnsamMueble.jsp");
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                                        }
                    }
      
%>
            </div>    
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <h4>  <center> <label>Ensambles de Muebles</label></center></h4>
                <thead>

                    <tr>
                        <th>Id Ensamble</th>
                        <th>Mueble</th>
                        <th>Fecha de Ensamble</th>
                        <th>Usuario de Ensamble</th>
                    </tr>
                </thead>
                <tbody>
<%                  
 
        try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        rs=sta.executeQuery("SELECT * FROM ENSAMUEBLE");
        
        while(rs.next()){     
           %>
                    <tr>
                        <th><%=rs.getString(1)%></th>
                        <th><%=rs.getString(2)%></th>
                        <th><%=rs.getString(3)%></th>
                        <th><%=rs.getString(4)%></th>                        
                        <td>

                        </td>
                    </tr>
            <%     }
                sta.close();
                rs.close();
                cnx.close();
                    }catch(Exception e){
    
                    }

              %>      
  
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </div>
    </body>
</html>
