/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.cotizaciones;

import Controlador.database.Conexion;
import Modelo.Cotizaciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Carlos Andres
 */
public class controladoCotizaciones {

   public static void save(Cotizaciones demo) {
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Insert into "
                    + "Cotizaciones values(?,?,?,?,?,?,?,?,?,?,?)");
            pst.setTimestamp(1, new Timestamp(demo.getFechacot().getTime()));
            pst.setInt(2, demo.getCodigocot()); 
            pst.setInt(3, demo.getCC_NIT_Usuario());
            pst.setString(4, demo.getTipodis());
            pst.setString(5, demo.getMarca());
            pst.setString(6, demo.getModdelodis());
            pst.setInt(7, demo.getCant());
            pst.setString(8, demo.getDesc());
            pst.setString(9, demo.getCotizar());
            pst.setString(10, demo.getNombreProv());
            pst.setInt(11, demo.getCosidoSer());
            pst.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(controladoCotizaciones.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(controladoCotizaciones.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
