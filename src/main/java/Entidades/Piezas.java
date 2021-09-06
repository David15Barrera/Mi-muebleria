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
public class Piezas {
    int idpieza;
    String tipo;
    String costo;

    public Piezas(){
        
    }

    public Piezas(String tipo, String costo) {
        this.tipo = tipo;
        this.costo = costo;
    }

    public int getIdpieza() {
        return idpieza;
    }

    public void setIdpieza(int idpieza) {
        this.idpieza = idpieza;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
    }


   }