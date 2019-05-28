/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.servicios;

import Modelo.Servicios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aguas
 */
@WebServlet(name = "ControladorRegistro", urlPatterns = {"/ControladorRegistro"})
public class ControladorRegistro extends HttpServlet {

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
            String fech = request.getParameter("fecha");
            String cod = request.getParameter("codigo");
            String[] split = fech.split("-");
            String nombrepro = request.getParameter("nombreprov");
            String nombreser = request.getParameter("nombreser");
            String tipo = request.getParameter("tiposer");
            String desc = request.getParameter("descser");
            String preci = request.getParameter("preciser");
            String NProveedor = request.getParameter("NITPr");
            Servicios ser = new Servicios();
            GregorianCalendar calendar = new GregorianCalendar(new Integer(split[0]), new Integer(split[1]),
                    new Integer(split[2]));
            ser.setFechaser(calendar.getTime());
            ser.setCodigoser(new Integer(cod));
            ser.setNombre_Prov(nombrepro);
            ser.setNombreser(nombreser);
            ser.setTiposer(tipo);
            ser.setDescrip(desc);
            ser.setPrecio(new Integer(preci));
            ser.setNit(new Integer(NProveedor));
            ControladorServicios.save(ser);

            RequestDispatcher rd = request.getRequestDispatcher("/RegistroServicio.jsp");
            rd.forward(request, response);
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
