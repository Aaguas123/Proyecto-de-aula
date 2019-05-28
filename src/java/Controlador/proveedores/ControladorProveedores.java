/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.proveedores;

import Controlador.database.Conexion;
import Modelo.Proveedores;
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
public class ControladorProveedores {

    public static void save(Proveedores demo) {
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Insert into "
                    + "Proveedores values(?,?,?,?,?,?,?,?,?)");
            pst.setString(1, demo.getTipo());
            pst.setString(2, demo.getRazons());
            pst.setInt(3, demo.getNIT());
            pst.setString(4, demo.getEmail());
            pst.setString(5, demo.getEmail1());
            pst.setString(6, demo.getTel());
            pst.setString(7, demo.getTel2());
            pst.setString(8, demo.getDireccion());
            pst.setString(9, demo.getContraseña());
            pst.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorProveedores.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorProveedores.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void delete(Proveedores demo) {
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Delete from "
                    + "Proveedores where CC_NIT=?");
            pst.setInt(1, demo.getNIT());

            pst.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ControladorProveedores.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void update(Proveedores demo) throws ClassNotFoundException, SQLException {
        Connection connect = Conexion.connect();
        PreparedStatement pst = connect.prepareStatement("update  "
                + "Proveedores set Tipo=?, Nombre=?, Email=?,Email2=?,Telefono=?,TelefonoII=?,Direccion=?,Contraseña=? where NIT_Proveedor=?");
        pst.setInt(9, demo.getNIT());
        pst.setString(1, demo.getTipo());
        pst.setString(2, demo.getRazons());
        pst.setString(3, demo.getEmail());
        pst.setString(4, demo.getEmail1());
        pst.setString(5, demo.getTel());
        pst.setString(6, demo.getTel2());
        pst.setString(7, demo.getDireccion());
        pst.setString(8, demo.getContraseña());
        pst.executeUpdate();

    }

    public static List<Proveedores> list() {
        List<Proveedores> listado = new ArrayList<>();
        try {

            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Select * "
                    + "from Proveedores order by 1");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Proveedores u = new Proveedores();

                u.setNIT(rs.getInt(1));
                u.setTipo(rs.getString(2));
                u.setRazons(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setEmail1(rs.getString(5));
                u.setTel(rs.getString(6));
                u.setTel2(rs.getString(7));
                u.setDireccion(rs.getString(8));
                u.setContraseña(rs.getString(9));

                listado.add(u);

            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorProveedores.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorProveedores.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
}
