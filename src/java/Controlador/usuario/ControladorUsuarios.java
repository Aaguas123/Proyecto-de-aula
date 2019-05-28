/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.usuario;

import Controlador.database.Conexion;
import Controlador.servicios.ControladorServicios;
import Modelo.Servicios;
import Modelo.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aguas
 */
public class ControladorUsuarios {
     public static void save(Usuarios demo) {
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Insert into "
                    + "Usuarios values(?,?,?,?,?,?,?,?,?)");
            pst.setString(1, demo.getTipo());
            pst.setString(2, demo.getNombre());
            pst.setString(3, demo.getApelidos());
            pst.setInt(4, demo.getCC_NIT());
            pst.setString(5, demo.getEmail());
            pst.setString(6, demo.getTelefono());
            pst.setString(7, demo.getTelefono2());
            pst.setString(8, demo.getDireccion());
            pst.setString(9, demo.getContraseña()); 
            pst.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }catch (SQLException ex) {
            Logger.getLogger(ControladorUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
     
       public static List<Usuarios> lis() {
        List<Usuarios> listado = new ArrayList<>();
        try {

            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Select * "
                    + "from Usuarios order by 1");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Usuarios c = new Usuarios();
                c.setTipo(rs.getString(1));
                c.setNombre(rs.getString(2));
                c.setApelidos(rs.getString(3));
                c.setCC_NIT(rs.getInt(4));
                c.setEmail(rs.getString(5));
                c.setTelefono(rs.getString(6));
                c.setTelefono2(rs.getString(7));
                c.setDireccion(rs.getString(8));
                c.setContraseña(rs.getString(9));
                listado.add(c);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
}
