/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.SolicitarServicio;

import Modelo.SolicitarServ;
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
 * @author Aguas
 */
@WebServlet(name = "ControladorReServicio", urlPatterns = {"/ControladorReServicio"})
public class ControladorReServicio extends HttpServlet {

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
            String fecha = request.getParameter("EE1");
            String[] split = fecha.split("-");
            String codigo = request.getParameter("A1");
            String CC_NIT = request.getParameter("B1");
            String tipo = request.getParameter("C1");
            String marca = request.getParameter("D1");
            String CODIS = request.getParameter("E1");
            String modelo = request.getParameter("F1");
            String cant = request.getParameter("G1");
            String descp = request.getParameter("H1");
            String BUS = request.getParameter("I1");
             String RETOR = request.getParameter("M1");
            String Nompro = request.getParameter("N1");
            String NITPro = request.getParameter("N2");
            SolicitarServ soli = new SolicitarServ ();
            GregorianCalendar calendar = new GregorianCalendar(new Integer(split[0]), new Integer(split[1]),
            new Integer(split[2]));
            soli.setFechacot(calendar.getTime());
            soli.setCodigocot(new Integer(codigo)); 
            soli.setCC_NIT_Usuario(new Integer(CC_NIT));
            soli.setTipodis(tipo);
            soli.setMarca(marca);
            soli.setCodis(new Integer(CODIS));
            soli.setModdelodis(modelo);
            soli.setCant(new Integer(cant));     
            soli.setDesc(descp);
            soli.setBus(BUS);
            soli.setRetor(RETOR);
            soli.setNombreProv(Nompro);
            soli.setCC_NIT_Proveedor(new Integer(NITPro));
            ControladorSolicitar.save(soli);
            
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
