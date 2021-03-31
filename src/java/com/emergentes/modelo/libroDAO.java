package com.emergentes.modelo;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class libroDAO {

    private int correlativo;
    private ArrayList<libro> libros;

    public libroDAO() {
        libros = new ArrayList<libro>();
    }

    public int getCorrelativo() {
        return correlativo;
    }

    public void setCorrelativo(int correlativo) {
        this.correlativo = correlativo;
    }

    public ArrayList<libro> getLibros() {
        return libros;
    }

    public void setLibros(ArrayList<libro> libros) {
        this.libros = libros;
    }

    public void insertar(libro item){
        libros.add(item);
    }
    
    public void modificar (int id, libro item){
        int pos = posicion(id);
        libros.set(pos, item);
    }
    
    public void eliminar(int id){
        int pos = posicion(id);
        libros.remove(pos);
    }
    
    public int posicion(int id){
        int i = -1;
        if(libros.size()>0){
            for(libro item : libros){
                ++i;
                if(item.getId()== id){
                    break;
                }
            }
        }
        return i;
    }
}
