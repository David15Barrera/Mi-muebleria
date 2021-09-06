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
public interface CRUDUSER {
    public List listar();
    public Usuario listarid(String nombre);
    public boolean add(Usuario us);
    public boolean edit(Usuario us);
    public boolean delete(String nombre);
}
