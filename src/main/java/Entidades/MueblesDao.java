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
public class MueblesDao implements CrudMuebles{
    Encriptar conex = new Encriptar(); 
    ResultSet rs;
    Connection con;
    PreparedStatement ps;
    Muebles us = new Muebles();
    
    @Override
    public List listar() {
    ArrayList<Muebles> lista = new ArrayList<>();
    String sql = "Select * from MUEBLE";
    try{
        con=conex.getEncriptar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            Muebles mueb = new Muebles();
            mueb.setIdmueb(rs.getInt("idmueb"));
            mueb.setIdmueble(rs.getString("idmueble"));
            mueb.setPreciomub(rs.getString("preciomub"));
            lista.add(mueb);
        }
    }catch(Exception e){
        
    }
return lista;

    }

    @Override
    public Muebles listarid(int arg0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Muebles mueb) {
     String sql = "INSERT INTO MUEBLE (idmueble, preciomub) VALUES ('"+mueb.getIdmueble()+"','"+mueb.getPreciomub()+"')";
    try{
        con=conex.getEncriptar();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();
    }catch(Exception e){
        
    }
    return false;
    }

    @Override
    public boolean edit(Muebles arg0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int arg0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
