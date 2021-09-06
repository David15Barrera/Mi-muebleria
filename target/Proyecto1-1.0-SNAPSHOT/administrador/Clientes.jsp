<%-- 
    Document   : Clientes
    Created on : 28/08/2021, 00:17:19
    Author     : david
--%>

<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQLConnector.connectorDB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
     //Metodo para eliminar registro cliente
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
        Encriptar con = new Encriptar();
                String cod=request.getParameter("cod"); 
                   try{
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        //rs=sta.executeQuery("");
                  sta.executeUpdate("delete from CLIENTE WHERE nit='"+cod+"'");
                  response.sendRedirect("Clie.jsp");
                  // request.getRequestDispatcher("Clie.jsp").forward(request, response);
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                    }
%>
   </body>
</html>
