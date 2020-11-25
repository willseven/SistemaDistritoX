package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        //hasta aqui commit "designing profile whitout backend"
        String accion= request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Perfil")) {
            request.getRequestDispatcher("Perfil.jsp").forward(request, response);
        }
        if (menu.equals("Inicio")) {
            request.getRequestDispatcher("Inicio.jsp").forward(request, response);
        }
        if (menu.equals("Tramitar")) {
            request.getRequestDispatcher("Tramitar.jsp").forward(request, response);
        }
        if (menu.equals("Historial")) {
            request.getRequestDispatcher("Historial.jsp").forward(request, response);
        }
        if (menu.equals("Contactos")) {
            request.getRequestDispatcher("Contactos.jsp").forward(request, response);
        }
        if (menu.equals("Acercade")) {
            request.getRequestDispatcher("Acercade.jsp").forward(request, response);
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
