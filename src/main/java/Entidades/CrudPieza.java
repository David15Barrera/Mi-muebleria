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
public interface CrudPieza {
    public List listar();
    public Piezas listarid(int Pieza);
    public boolean add(Piezas pies);
    public boolean edit(Piezas pies);
    public boolean delete(int Pieza);
}
