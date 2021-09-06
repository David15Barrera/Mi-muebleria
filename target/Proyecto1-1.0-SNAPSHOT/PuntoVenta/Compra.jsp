<%-- 
    Document   : Compra
    Created on : 27/08/2021, 02:24:24
    Author     : david
--%>

<%@page import="Entidades.ClienteDao"%>
<%@page import="Entidades.Cliente"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQLConnector.Encriptar"%>
<%@page import="SQLConnector.connectorDB"%>
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
            <div class="col-sm-5">
                <div class="card">
                    <form>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Datos de cliente</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                    <input type="text" name="codcliente" value="${c.getNit()}" class="form-control " placeholder="Nit">
                               <input type="submit" name="accionC" value="BuscarCliente" class="btn btn-outline-info">
                                <%           

        Cliente c = new Cliente();
        ClienteDao dao = new ClienteDao();
                        if (request.getParameter("accionC")!=null){
                        String codc=request.getParameter("codcliente");
                        c.setNit(codc);
                        c =dao.buscar(codc);
                        request.setAttribute("c",c);
                        
                                   }
                               
                               %>
                        
<%%>
                            </div>
                            <div class="col-sm-6"> 
                               <input type="text" name="nombrescliente" value="${c.getNombre()}" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Datos Producto Mueble</label>    
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                               <input type="text" name="codProducto" class="form-control " placeholder="Mueble">
                               <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                            </div>
                            <div class="col-sm-6"> 
                               <input type="text" name="nombrescliente" class="form-control">
                            </div>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                               <input type="text" name="Precio" class="form-control " placeholder="Q 0.00">
                            </div>
                            <div class="col-sm-3"> 
                               <input type="num" name="Cantidad" class="form-control">
                            </div>
                            <div class="col-sm-3"> 
                               <input type="text" name="stock" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="accion" value="Agregar" class="btn btn-outline-info">
                        </div>
                    </div>
                </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                    <div class="d-flex col-sm-6 ml-auto">
                        <label>No Serie</label>   
                        <br>
                    <input type="text" name="NoSerie" class="form-control">
                    </div>  
                        <table class=" table table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <div>
                            <input type="submit" name="accion" value="Generar Venta" class="btn btn-success" >
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger" >
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>      

    </body>
</html>
