/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.cotizaciones;

import Modelo.Cotizaciones;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlos Andres
 */
@WebServlet(name = "cotizacionesRegistrar", urlPatterns = {"/cotizacionesRegistrar"})
public class cotizacionesRegistrar extends HttpServlet {

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
String fecha = request.getParameter("Fecha");
            String[] split = fecha.split("-");
            GregorianCalendar calendar = new GregorianCalendar(new Integer(split[0]), new Integer(split[1]),
            new Integer(split[2]));
            String codigo = request.getParameter("Codigo");
            String CC_NIT = request.getParameter("Id");
            String tipo = request.getParameter("Tipo1");
            String marca = request.getParameter("Marca2");
            String modelo = request.getParameter("Modelo");
            String cant = request.getParameter("Cantidad");
            String descp = request.getParameter("Descripcion");
            String cot = request.getParameter("tipo2");
            String Nompro = request.getParameter("Proveedor");
            Cotizaciones coti = new Cotizaciones();
            
            
            coti.setFechacot(calendar.getTime());
            coti.setCodigocot(new Integer(codigo));
            coti.setCC_NIT_Usuario(new Integer(CC_NIT));
            coti.setTipodis(tipo);
            coti.setMarca(marca);
            coti.setModdelodis(modelo);
            coti.setCant(new Integer(cant));
            coti.setDesc(descp);
            coti.setCotizar(cot);
            coti.setNombreProv(Nompro);
            controladoCotizaciones.save(coti);
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
