package Logica;

import SQLConnector.Encriptar;
import java.sql.PreparedStatement;

/**
 *
 * @author david
 */
public class Login extends Encriptar{
    
    public boolean registrar(String idnombre, String password, String tipo){
        
        PreparedStatement pst = null;
        
        try{
            
            String consulta = "INSERT INTO USUARIO (idnombre, password, tipo) VALUES (?,?,?)";
            pst = getEncriptar().prepareStatement(consulta);
            pst.setString(1, idnombre);
            pst.setString(2, password);
            pst.setString(3, tipo);
            
            if(pst.executeUpdate() ==1){
                return true;
            }
        }catch (Exception e){
            System.err.println("Error" + e);
        }finally{
            try{
                if(getEncriptar()!= null) getEncriptar().close();
                if(pst != null) pst.close();
            }catch (Exception e){
                
            }
        }
        
        return false;
    }
 
    public boolean Empleado(String idnombre, String password, int tipo){
        
        PreparedStatement pst = null;
        
        try{
            
            String consulta = "INSERT INTO EMPLEADO (idnombre, password, tipo) VALUES (?,?,?)";
            pst = getEncriptar().prepareStatement(consulta);
            pst.setString(1, idnombre);
            pst.setString(2, password);
            pst.setInt(3, tipo);
            
            if(pst.executeUpdate() ==1){
                return true;
            }
        }catch (Exception e){
            System.err.println("Error" + e);
        }finally{
            try{
                if(getEncriptar()!= null) getEncriptar().close();
                if(pst != null) pst.close();
            }catch (Exception e){
                
            }
        }
        
        return false;
    }
    
  }