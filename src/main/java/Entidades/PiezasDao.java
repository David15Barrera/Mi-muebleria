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
public class PiezasDao implements CrudPieza{
    Encriptar conex = new Encriptar(); 
    ResultSet rs;
    Connection con;
    PreparedStatement ps;
    Piezas us = new Piezas();
     
    @Override
    public List listar() {
    ArrayList<Piezas> list = new ArrayList<>();
    String sql = "Select * from PIEZA";
    try{
        con=conex.getEncriptar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            Piezas pies = new Piezas();
            pies.setIdpieza(rs.getInt("idpie"));
            pies.setTipo(rs.getString("idpieza"));
            pies.setCosto(rs.getString("costopieza"));
            list.add(pies);
        }
    }catch(Exception e){
        
    }
return list;
    }

    @Override
    public Piezas listarid(int Pieza) {
            String sql = "Select * from PIEZA where idpie="+Pieza;
    try{
        con=conex.getEncriptar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            us.setIdpieza(rs.getInt("idpie"));
            us.setTipo(rs.getString("idpieza"));
            us.setCosto(rs.getString("costopieza"));
        }
    }catch(Exception e){
        
    }
return us;
    }

    @Override
    public boolean add(Piezas pies) {
    String sql = "INSERT INTO PIEZA (idpieza, costopieza) VALUES ('"+pies.getTipo()+"','"+pies.getCosto()+"')";
    try{
        con=conex.getEncriptar();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();
    }catch(Exception e){
        
    }
    return false;
    }

    @Override
    public boolean edit(Piezas pies) {
        String sql = "update PIEZA set idpieza='"+pies.getTipo()+"',costopieza='"+pies.getCosto()+"' where idpie="+pies.getIdpieza();
        try{
            con=conex.getEncriptar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean delete(int pies) {
        String sql="delete from PIEZA where id="+pies;
        try{
            con=conex.getEncriptar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }

return false;
    }
     
}
