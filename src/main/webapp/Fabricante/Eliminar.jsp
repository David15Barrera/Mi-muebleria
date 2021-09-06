<%-- 
    Document   : Eliminar
    Created on : 5/09/2021, 17:03:07
    Author     : david
--%>

<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Entidades.PiezasDao"%>
<%@page import="Entidades.Piezas"%>
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
        //rs=sta.executeQuery("");
                  sta.executeUpdate("delete from PIEZA WHERE idpie='"+cod+"'");
                  response.sendRedirect("Piezas.jsp");
                  // request.getRequestDispatcher("Clie.jsp").forward(request, response);
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                    }
              %>
    </body>
</html>
