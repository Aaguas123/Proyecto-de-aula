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
public class Usuarios {

   
    private String Tipo;
    private String Nombre;
    private String Apelidos;
    private int CC_NIT;
    private String Email;
    private String Telefono;
    private String Telefono2;
    private String Direccion;
    private String Contraseña;

    public Usuarios(String Tipo, String Nombre, String Apelidos, int CC_NIT, String Email, String Telefono, String Telefono2, String Direccion, String Contraseña) {
        this.Tipo = Tipo;
        this.Nombre = Nombre;
        this.Apelidos = Apelidos;
        this.CC_NIT = CC_NIT;
        this.Email = Email;
        this.Telefono = Telefono;
        this.Telefono2 = Telefono2;
        this.Direccion = Direccion;
        this.Contraseña = Contraseña;
    }

    public Usuarios() {
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApelidos() {
        return Apelidos;
    }

    public void setApelidos(String Apelidos) {
        this.Apelidos = Apelidos;
    }

    public int getCC_NIT() {
        return CC_NIT;
    }

    public void setCC_NIT(int CC_NIT) {
        this.CC_NIT = CC_NIT;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getTelefono2() {
        return Telefono2;
    }

    public void setTelefono2(String Telefono2) {
        this.Telefono2 = Telefono2;
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
