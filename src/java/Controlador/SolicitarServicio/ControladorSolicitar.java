/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.SolicitarServicio;

import Controlador.database.Conexion;
import Modelo.SolicitarServ;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aguas
 */
public class ControladorSolicitar {

    public static void save(SolicitarServ demo) {
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Insert into "
                    + "Solicitar values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setTimestamp(1, new Timestamp(demo.getFechacot().getTime()));
            pst.setInt(2, demo.getCodigocot());
            pst.setInt(3, demo.getCC_NIT_Usuario());
            pst.setString(4, demo.getTipodis());
            pst.setString(5, demo.getMarca());
            pst.setInt(6, demo.getCodis());
            pst.setString(7, demo.getModdelodis());
            pst.setInt(8, demo.getCant());
            pst.setString(9, demo.getDesc());
            pst.setString(10, demo.getBus());
            pst.setString(11, demo.getRetor());
            pst.setString(12, demo.getNombreProv());
            pst.setInt(13, demo.getCC_NIT_Proveedor());
            pst.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorSolicitar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorSolicitar.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
