<%-- 
    Document   : EliminarCliente
    Created on : 31/08/2021, 02:07:55
    Author     : david
--%>

<%@page import="SQLConnector.Encriptar"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
        Encriptar con = new Encriptar();
    
                String cod=request.getParameter("cod"); 
                   try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        cnx=con.getEncriptar();
        sta=cnx.createStatement();
        //rs=sta.executeQuery("");
                  sta.executeUpdate("delete from CLIENTE WHERE nit='"+cod+"'");
                  response.sendRedirect("ClientesView.jsp");
                  // request.getRequestDispatcher("Clie.jsp").forward(request, response);
                    }catch (Exception e){
                    out.print("Rellenar campos requeridos");
                    }
%>
 
    </body>
</html>
