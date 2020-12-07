package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {

    Usuario us = new Usuario();
    UsuarioDao udao = new UsuarioDao();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        //hasta aqui commit "designing profile whitout backend"
        String accion= request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
            if (menu.equals("Adminuser")) {
            
            switch (accion) {
                case "Listar":
                    List lista = udao.listar();
                    request.setAttribute("usuarios", lista);
                    break;
                case "Agregar":                
                String nom = request.getParameter("txtNombres");
                String apellido = request.getParameter("txtApellido");
                String cel = request.getParameter("txtCelular");
                int ci = Integer.parseInt(request.getParameter("txtCi"));
                String fanac = request.getParameter("txtFnac");
                String direc = request.getParameter("txtDirec");
                String email = request.getParameter("txtEmail");
                String clave = request.getParameter("txtClave");
                int tipous = Integer.parseInt(request.getParameter("txtTipo"));
                int tipodep = Integer.parseInt(request.getParameter("txtDepar"));
                us.setNom(nom);
                us.setApellido(apellido);
                us.setCel(cel);
                us.setCi(ci);
                us.setFnac(fanac);
                us.setDir(direc);
                us.setEmail(email);
                us.setClave(clave);
                us.setTipous(tipous);
                us.setTipodep(tipodep);
                
                udao.agregar(us);
                request.getRequestDispatcher("Controlador?menu=Adminuser&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    
                    break;
                case "Actualizar":
                   
                    break;
                case "Delete":
                    
                    break;
                default:
                    throw new AssertionError();
            
            
        }
            request.getRequestDispatcher("Adminuser.jsp").forward(request, response);
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
