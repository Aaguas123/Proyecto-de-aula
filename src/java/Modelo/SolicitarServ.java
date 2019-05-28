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
public class SolicitarServ {

    private Date fechacot;
    private int codigocot;
    private int CC_NIT_Usuario;
    private int CC_NIT_Proveedor;
    private int codis;
    private String Tipodis;
    private String Marca;
    private String Moddelodis;
    private int Cant;
    private String Desc;
    private String Bus;
    private String Retor;
    private String NombreProv;

    public SolicitarServ(Date fechacot, int codigocot, int CC_NIT_Usuario, int CC_NIT_Proveedor, int codis, String Tipodis, String Marca, String Moddelodis, int Cant, String Desc, String Bus, String Retor, String NombreProv) {
        this.fechacot = fechacot;
        this.codigocot = codigocot;
        this.CC_NIT_Usuario = CC_NIT_Usuario;
        this.CC_NIT_Proveedor = CC_NIT_Proveedor;
        this.codis = codis;
        this.Tipodis = Tipodis;
        this.Marca = Marca;
        this.Moddelodis = Moddelodis;
        this.Cant = Cant;
        this.Desc = Desc;
        this.Bus = Bus;
        this.Retor = Retor;
        this.NombreProv = NombreProv;
    }

    public SolicitarServ() {
    }

    public Date getFechacot() {
        return fechacot;
    }

    public void setFechacot(Date fechacot) {
        this.fechacot = fechacot;
    }

    public int getCodigocot() {
        return codigocot;
    }

    public void setCodigocot(int codigocot) {
        this.codigocot = codigocot;
    }

    public int getCC_NIT_Usuario() {
        return CC_NIT_Usuario;
    }

    public void setCC_NIT_Usuario(int CC_NIT_Usuario) {
        this.CC_NIT_Usuario = CC_NIT_Usuario;
    }

    public int getCC_NIT_Proveedor() {
        return CC_NIT_Proveedor;
    }

    public void setCC_NIT_Proveedor(int CC_NIT_Proveedor) {
        this.CC_NIT_Proveedor = CC_NIT_Proveedor;
    }

    public int getCodis() {
        return codis;
    }

    public void setCodis(int codis) {
        this.codis = codis;
    }

    public String getTipodis() {
        return Tipodis;
    }

    public void setTipodis(String Tipodis) {
        this.Tipodis = Tipodis;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getModdelodis() {
        return Moddelodis;
    }

    public void setModdelodis(String Moddelodis) {
        this.Moddelodis = Moddelodis;
    }

    public int getCant() {
        return Cant;
    }

    public void setCant(int Cant) {
        this.Cant = Cant;
    }

    public String getDesc() {
        return Desc;
    }

    public void setDesc(String Desc) {
        this.Desc = Desc;
    }

    public String getBus() {
        return Bus;
    }

    public void setBus(String Bus) {
        this.Bus = Bus;
    }

    public String getRetor() {
        return Retor;
    }

    public void setRetor(String Retor) {
        this.Retor = Retor;
    }

    public String getNombreProv() {
        return NombreProv;
    }

    public void setNombreProv(String NombreProv) {
        this.NombreProv = NombreProv;
    }


  

}
