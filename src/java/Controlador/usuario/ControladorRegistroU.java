/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.usuario;

import Modelo.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aguas
 */
@WebServlet(name = "ControladorRegistroU", urlPatterns = {"/ControladorRegistroU"})
public class ControladorRegistroU extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String tipo = request.getParameter("tipo1");
            String nombres = request.getParameter("nombre");
            String apellidos1 = request.getParameter("apellidos");
            String cc_nit1 = request.getParameter("cc_nit");
            String Email1 = request.getParameter("email");
            String tel1 = request.getParameter("tel");
            String tel2 = request.getParameter("tel1");
            String dir1 = request.getParameter("dir");
            String cont1 = request.getParameter("cont");
            Usuarios us = new Usuarios();
            us.setTipo(tipo);
            us.setNombre(nombres);
            us.setApelidos(apellidos1);
            us.setCC_NIT(new Integer(cc_nit1));
            us.setEmail(Email1);
            us.setTelefono(tel1);
            us.setTelefono2(tel2);
            us.setDireccion(dir1);
            us.setContraseña(cont1);
            ControladorUsuarios.save(us);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
