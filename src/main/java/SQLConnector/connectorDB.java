/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQLConnector;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author david
 */
public class connectorDB {
    
    //Variables
        Connection con;
    private static Connection conexion = null;
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String user = "root";
    private static final String password = "sistemas";
    private static final String url = "jdbc:mysql://localhost:3306/MUEBLERIA";
    private static final int MYSQL_DUPLICATE_PK = 3306;

    /*
     * Conexion a la base datos
     */
    public Connection connectionDB() {
        conexion = null;
        try {
            //Llama al jdbc
            Class.forName(driver);
            conexion = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion exitosa ");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar a la base de datos " + e);
        }
        return con;
    }
    
    //Valores
    
    public int USUARIO(String user, String pass){
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        int tipo = 0;
        String sql="select tipo from USUARIO where idnombre='"+user+"' and password='"+pass+"'";
        try{
           Class.forName(this.driver);
           conn = DriverManager.getConnection(
           this.url,
           this.user,
           this.password
           );
           pst = conn.prepareStatement(sql);
           rs = pst.executeQuery();
           
           while (rs.next()) {
               tipo = rs.getInt(1);
            }
           conn.close();
        } catch (ClassNotFoundException | SQLException e){
            
        }
        return tipo;
        
    }

    /*
     * Metodo para llamar a la conexion
     */
    public Connection getConnection() {
        return conexion;
    }

    /*
     * Metodo encargado de salir de la base de datos
     */
    public void disconnectDB() {
        conexion = null;      
    }
}

    
