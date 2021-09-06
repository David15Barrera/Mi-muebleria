/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Entidades.Cliente;
import Entidades.ClienteDao;
import Entidades.Piezas;
import Entidades.PiezasDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author david
 */
public class Controlador extends HttpServlet {
    
    PiezasDao dao = new PiezasDao();
    Piezas u= new Piezas();
    int id;
    String listar="Fabricante/Piezas.jsp";
    String add = "vistas/muebles";
    String edit = "Fabricante/EditMueble.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
      String menu= request.getParameter("menu");  
      String accion=request.getParameter("accion");

/*      if(menu.equals("Clie")){
         switch(accion){
              case "listar":
                  List lista=cedo.listar();
                  request.setAttribute("Clientess", lista);
              break;    
              case "Agregar":
              break;
              case "Editar":
              break;
              case "Modificar":
              break;          
          }
       request.getRequestDispatcher("Clie.jsp").forward(request, response);
         
        }
     
      if(menu.equals("Empleados")){
       request.getRequestDispatcher("Empleados.jsp").forward(request, response);
      }*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String acceso="";
        String action=request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }else if(action.equalsIgnoreCase("Agregar")){
            String tipo = request.getParameter("txtipieza");
            String costo = request.getParameter("txtcosto");
            u.setTipo(tipo);
            u.setCosto(costo);
            dao.add(u);
            acceso=listar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("edit", request.getParameter("editar"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            id = Integer.parseInt(request.getParameter("txtid"));
            String tipo = request.getParameter("txtipieza");
            String costo = request.getParameter("txtcosto");
            u.setIdpieza(id);
            u.setTipo(tipo);
            u.setCosto(costo);
            dao.add(u);
            acceso=listar;
            
        }else if(action.equalsIgnoreCase("eliminar")){
            id = Integer.parseInt(request.getParameter("id"));
            u.setIdpieza(id);
            dao.delete(id);
            acceso=listar;
        }
    
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        
    
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
