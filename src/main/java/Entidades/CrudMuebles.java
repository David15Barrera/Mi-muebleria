/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.util.List;

/**
 *
 * @author david
 */
public interface CrudMuebles {
    public List listar();
    public Muebles listarid(int Mueble);
    public boolean add(Muebles mueb);
    public boolean edit(Muebles mueb);
    public boolean delete(int mueb);
}
