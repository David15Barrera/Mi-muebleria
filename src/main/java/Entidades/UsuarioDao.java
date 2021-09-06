/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import SQLConnector.Encriptar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author david
 */
public class UsuarioDao implements CRUDUSER {

     PreparedStatement ps;
     ResultSet rs;
     Connection con;
     Encriptar conex = new Encriptar();
     Usuario us = new Usuario();
     
     
    @Override
    public List listar() {
        List<Usuario> datos = new ArrayList<>();
        String sql ="SELECT * FROM USUARIO";
        try{
            con=conex.getEncriptar();
            ps=con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Usuario u= new Usuario();
                u.setIdnombre(rs.getString("idnombre"));
                u.setPassword(rs.getString("password"));
                u.setTipo(rs.getString("tipo"));
                datos.add(u);
            }
            
        }catch (Exception e ){
            
        }
        return datos;
    }

 @Override
    public Usuario listarid(String nombre) {
        String sql ="SELECT * FROM USUARIO where "+nombre;
        try{
            con=conex.getEncriptar();
            ps=con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                us.setIdnombre(rs.getString("idnombre"));
                us.setPassword(rs.getString("password"));
                us.setTipo(rs.getString("tipo"));
            }
             
        }catch (Exception e ){
            
        }
        return us;
    }

    @Override
    public boolean add(Usuario us) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Usuario us) {
        String sql ="Update USUARIO set tipo='"+us.getTipo()+"',password='"+us.getPassword()+"' where idnombre='"+us.getIdnombre();        
        try{
            con=conex.getEncriptar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        }catch(Exception e){
            
        }return false;
    }

    @Override
    public boolean delete(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
