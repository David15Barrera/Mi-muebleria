/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQLConnector;
import SQLConnector.connectorDB;
/**
 *
 * @author david
 */
  public class MainPruebaConexion {
    
  public static void main(String[] args){
//                connectorDB.getConnection();
                        connectorDB op = new connectorDB();
        op.connectionDB();
    }
}
