<%-- 
    Document   : Eliminarpie
    Created on : 6/09/2021, 11:18:14
    Author     : david
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
   Encriptar con = new Encriptar();
       Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
    
                String cod=request.getParameter("id"); 
                   try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
                  sta.executeUpdate("delete from ENSAMPIEZA WHERE idemsamble='"+cod+"'");
                  response.sendRedirect("EnsemPieza.jsp");
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                    }
              %>
    </body>
</html>
