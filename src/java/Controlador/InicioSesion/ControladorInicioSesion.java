/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.InicioSesion;

import Controlador.database.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Aguas
 */
public class ControladorInicioSesion {

    public boolean validar(String email, String Pass) {
        ResultSet rs = null;
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Select * from Proveedores where Email=?, Contrasena=?");
            rs = pst.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
        }
        return false;
    }
}
