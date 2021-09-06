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
public class Usuario {
    String idnombre;
    String password;
    String tipo;

        public Usuario() {
    
}
    public Usuario(String idnombre, String password, String tipo) {
        this.idnombre = idnombre;
        this.password = password;
        this.tipo = tipo;
    }

    public String getIdnombre() {
        return idnombre;
    }

    public void setIdnombre(String idnombre) {
        this.idnombre = idnombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
