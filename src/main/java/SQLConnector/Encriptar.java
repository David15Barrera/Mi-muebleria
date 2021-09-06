/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQLConnector;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Base64;

/**
 *
 * @author david
 */
public class Encriptar {

    private String USERNAME = "root";
    private String PASSWORD = "sistemas";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "MUEBLERIA";
    private String CLASSNAME = "com.mysql.cj.jdbc.Driver";
    private String URL = "jdbc:mysql://localhost:3306/MUEBLERIA";
    private Connection con;
    
    public Encriptar(){
        try{
            Class.forName(CLASSNAME);
            con= DriverManager.getConnection(URL,USERNAME,PASSWORD);
             System.err.println("Exito");
        }catch(ClassNotFoundException e){
            System.err.println("Error"+e);
        }catch(SQLException e){
            System.err.println("Error"+e);
        }
    }
    public Connection getEncriptar(){
        return con;
    }

}
        