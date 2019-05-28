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
public class Cotizaciones {

    private Date fechacot;
    private int codigocot;
    private int CC_NIT_Usuario;
    private String Tipodis;
    private String Marca ;
    private String Moddelodis;
    private int Cant;
    private String Desc;
    private String Cotizar;
    private String NombreProv;
    private int CosidoSer;

    public Cotizaciones(Date fechacot, int codigocot, int CC_NIT_Usuario, String Tipodis, String Marca, String Moddelodis, int Cant, String Desc, String Cotizar, String NombreProv, int CosidoSer) {
        this.fechacot = fechacot;
        this.codigocot = codigocot;
        this.CC_NIT_Usuario = CC_NIT_Usuario;
        this.Tipodis = Tipodis;
        this.Marca = Marca;
        this.Moddelodis = Moddelodis;
        this.Cant = Cant;
        this.Desc = Desc;
        this.Cotizar = Cotizar;
        this.NombreProv = NombreProv;
        this.CosidoSer = CosidoSer;
    }

    public Cotizaciones() {
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

    public String getCotizar() {
        return Cotizar;
    }

    public void setCotizar(String Cotizar) {
        this.Cotizar = Cotizar;
    }

    public String getNombreProv() {
        return NombreProv;
    }

    public void setNombreProv(String NombreProv) {
        this.NombreProv = NombreProv;
    }

    public int getCosidoSer() {
        return CosidoSer;
    }

    public void setCosidoSer(int CosidoSer) {
        this.CosidoSer = CosidoSer;
    }

    
    
}
