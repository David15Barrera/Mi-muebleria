/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import Logica.Login;
import SQLConnector.connectorDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author david
 */
public class ClienteDao {
    connectorDB cn = new connectorDB();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

//Operaciones Crud
    public Cliente buscar(String nit){
        Cliente c= new Cliente();
        String sql="Select * from CLIENTE where nit="+nit;
        try{
            con = cn.connectionDB();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                c.setNit(rs.getString(1));
                c.setNombre(rs.getString(2));
                c.setDireccion(rs.getString(3));
                c.setMunicipio(rs.getString(4));
                c.setDepartamento(rs.getString(5));
            }
        }catch(Exception e){
            
        }
    return c;
    }
    
public List listar() {
    String sql = "select * from CLIENTE";
    List<Cliente>lista=new ArrayList<>();
    try{
        con=cn.connectionDB();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while (rs.next()){
            Cliente cl =new Cliente();
            cl.setNit(rs.getString("nit"));
            cl.setNombre(rs.getString("nombre"));
            cl.setDireccion(rs.getString("direccion"));
            cl.setMunicipio(rs.getString("municipio"));
            cl.setDepartamento(rs.getString("departamento"));
            lista.add(cl);
        }
        
        }catch (Exception e){
//        Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    return lista;
    }
public int agregar (Cliente ec){
    String sql = "insert into CLIENTE(nit, nombre, direccion, municipio, departamento) values (?,?,?,?,?)";
    try{
        con=cn.connectionDB();
        ps=con.prepareStatement(sql);
        ps.setString(1, ec.getNit());
        ps.setString(2, ec.getNombre());
        ps.setString(3, ec.getDireccion());
        ps.setString(4, ec.getMunicipio());
        ps.setString(5, ec.getDepartamento());
        ps.executeUpdate();
    }catch (Exception e){
        
    }
    return r;
}

public Cliente listarNit(String nit){
    Cliente cli=new Cliente();
    String sql="Select from CLIENTE where nit="+nit;
    try{
        con=cn.connectionDB();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            cli.setNombre(rs.getString(2));
            cli.setDireccion(rs.getString(3));
            cli.setMunicipio(rs.getString(4));
            cli.setDepartamento(rs.getString(5));
        }
    } catch (Exception e){
        
    }
    return cli;
}
public int actualizar (Cliente ec){
    String sql = "update CLIENTE set nit=?, nombre=?, direccion=?, municipio=?, departamento=? where nit=?";
    try{
        con=cn.connectionDB();
        ps=con.prepareStatement(sql);
        ps.setString(1, ec.getNit());
        ps.setString(2, ec.getNombre());
        ps.setString(3, ec.getDireccion());
        ps.setString(4, ec.getMunicipio());
        ps.setString(5, ec.getDepartamento());
        ps.executeUpdate();
    }catch (Exception e){
        
    }
    return r;
}

public void delete(String nit){
    String sql="delete from CLIENTE where nit="+nit;
    try{
        con=cn.connectionDB();
        ps=con.prepareStatement(sql);
        ps.execute();
    } catch (Exception e){
        
    }
    }

}


 
