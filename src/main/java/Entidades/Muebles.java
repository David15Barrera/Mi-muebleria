/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author david
 */
public class Muebles {
    int idmueb;
    String idmueble;
    String preciomub;
    
public Muebles(){
    
}

    public Muebles(String idmueble, String preciomub) {
        this.idmueble = idmueble;
        this.preciomub = preciomub;
    }

    public int getIdmueb() {
        return idmueb;
    }

    public void setIdmueb(int idmueb) {
        this.idmueb = idmueb;
    }

    public String getIdmueble() {
        return idmueble;
    }

    public void setIdmueble(String idmueble) {
        this.idmueble = idmueble;
    }

    public String getPreciomub() {
        return preciomub;
    }

    public void setPreciomub(String preciomub) {
        this.preciomub = preciomub;
    }
    
    
    
}
