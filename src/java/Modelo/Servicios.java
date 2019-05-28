/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author Aguas
 */
public class Servicios {

    private int codigoser;
    private Date fechaser;
    private String Nombreser;
    private String Nombre_Prov;
    private String Tiposer;
    private String Descrip;
    private int Precio;
    private int Nit;

    public Servicios(int codigoser, Date fechaser, String Nombreser, String Nombre_Prov, String Tiposer, String Descrip, int Precio, int Nit) {
        this.codigoser = codigoser;
        this.fechaser = fechaser;
        this.Nombreser = Nombreser;
        this.Nombre_Prov = Nombre_Prov;
        this.Tiposer = Tiposer;
        this.Descrip = Descrip;
        this.Precio = Precio;
        this.Nit = Nit;
    }

    public Servicios() {
    }

    public int getCodigoser() {
        return codigoser;
    }

    public void setCodigoser(int codigoser) {
        this.codigoser = codigoser;
    }

    public Date getFechaser() {
        return fechaser;
    }

    public void setFechaser(Date fechaser) {
        this.fechaser = fechaser;
    }

    public String getNombreser() {
        return Nombreser;
    }

    public void setNombreser(String Nombreser) {
        this.Nombreser = Nombreser;
    }

    public String getNombre_Prov() {
        return Nombre_Prov;
    }

    public void setNombre_Prov(String Nombre_Prov) {
        this.Nombre_Prov = Nombre_Prov;
    }

    public String getTiposer() {
        return Tiposer;
    }

    public void setTiposer(String Tiposer) {
        this.Tiposer = Tiposer;
    }

    public String getDescrip() {
        return Descrip;
    }

    public void setDescrip(String Descrip) {
        this.Descrip = Descrip;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public int getNit() {
        return Nit;
    }

    public void setNit(int Nit) {
        this.Nit = Nit;
    }

    

}
