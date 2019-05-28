/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Aguas
 */
public class Conexion {

    private final static String USER = "sa";
    private final static String PASSWORD = "estudiante";
    private final static String URL = "jdbc:sqlserver://localhost\\SQLEXPRESS2012:1433;databaseName=PROYECTOAULA";
    private final static String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    public static Connection connect() throws ClassNotFoundException, SQLException {
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
