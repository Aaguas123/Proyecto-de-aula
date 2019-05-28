/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Aguas
 */
public class Proveedores {
    private int NIT;
    private String Tipo;
    private String Razons;
    private String Email;
    private String Email1;
    private String Tel;
    private String Tel2;
    private String Direccion;
    private String Contraseña;

    public Proveedores(int NIT, String Tipo, String Razons, String Email, String Email1, String Tel, String Tel2, String Direccion, String Contraseña) {
        this.NIT = NIT;
        this.Tipo = Tipo;
        this.Razons = Razons;
        this.Email = Email;
        this.Email1 = Email1;
        this.Tel = Tel;
        this.Tel2 = Tel2;
        this.Direccion = Direccion;
        this.Contraseña = Contraseña;
    }

    public Proveedores() {
    }

    public int getNIT() {
        return NIT;
    }

    public void setNIT(int NIT) {
        this.NIT = NIT;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getRazons() {
        return Razons;
    }

    public void setRazons(String Razons) {
        this.Razons = Razons;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getEmail1() {
        return Email1;
    }

    public void setEmail1(String Email1) {
        this.Email1 = Email1;
    }

    public String getTel() {
        return Tel;
    }

    public void setTel(String Tel) {
        this.Tel = Tel;
    }

    public String getTel2() {
        return Tel2;
    }

    public void setTel2(String Tel2) {
        this.Tel2 = Tel2;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    
}
