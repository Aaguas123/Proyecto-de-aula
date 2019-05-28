/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.servicios;

import Controlador.database.Conexion;
import Modelo.Servicios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aguas
 */
public class ControladorServicios {

    public static void save(Servicios demo) {
        try {
            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Insert into "
                    + "Servicios values(?,?,?,?,?,?,?,?)");
            pst.setTimestamp(1, new Timestamp(demo.getFechaser().getTime()));
            pst.setInt(2, demo.getCodigoser());
            pst.setString(3, demo.getNombre_Prov());
            pst.setString(4, demo.getNombreser());
            pst.setString(5, demo.getTiposer());
            pst.setString(6, demo.getDescrip());
            pst.setInt(7, demo.getPrecio());
            pst.setInt(8, demo.getNit());
            pst.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorServicios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorServicios.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static List<Servicios> lis() {
        List<Servicios> listado = new ArrayList<>();
        try {

            Connection connect = Conexion.connect();
            PreparedStatement pst = connect.prepareStatement("Select * "
                    + "from Servicios order by 1");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Servicios c = new Servicios();
                c.setFechaser(rs.getDate(1));
                c.setCodigoser(rs.getInt(2));
                c.setNombre_Prov(rs.getString(3));
                c.setNombreser(rs.getString(4));
                c.setTiposer(rs.getString(5));
                c.setDescrip(rs.getString(6));
                c.setPrecio(rs.getInt(7));
                c.setNit(rs.getInt(8));

                listado.add(c);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorServicios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorServicios.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
}
