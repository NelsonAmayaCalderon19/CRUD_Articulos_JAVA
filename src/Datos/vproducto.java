/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.util.Date;

/**
 *
 * @author NELSON
 */
public class vproducto {
    private String codigo_articulo;
    private String seccion;
    private String nombre_articulo;
    private String precio;
    private String fecha;
    private String importado;
    private String pais_de_origen;

    public vproducto() {
    }

    public vproducto(String codigo_articulo, String seccion, String nombre_articulo, String precio, String fecha, String importado, String pais_de_origen) {
        this.codigo_articulo = codigo_articulo;
        this.seccion = seccion;
        this.nombre_articulo = nombre_articulo;
        this.precio = precio;
        this.fecha = fecha;
        this.importado = importado;
        this.pais_de_origen = pais_de_origen;
    }

    public String getCodigo_articulo() {
        return codigo_articulo;
    }

    public void setCodigo_articulo(String codigo_articulo) {
        this.codigo_articulo = codigo_articulo;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }

    public String getNombre_articulo() {
        return nombre_articulo;
    }

    public void setNombre_articulo(String nombre_articulo) {
        this.nombre_articulo = nombre_articulo;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getImportado() {
        return importado;
    }

    public void setImportado(String importado) {
        this.importado = importado;
    }

    public String getPais_de_origen() {
        return pais_de_origen;
    }

    public void setPais_de_origen(String pais_de_origen) {
        this.pais_de_origen = pais_de_origen;
    }
    
}
