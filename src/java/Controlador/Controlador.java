package Controlador;

import Modelo.Documento;
import Modelo.DocumentoDao;
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
    Documento doc = new Documento();
    DocumentoDao docdao= new DocumentoDao();
    int ide;
    int docuse;
    int docus;
    
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
                    case "Actualizar":
                    
                String nom1 = request.getParameter("txtNombres");
                String apellido1 = request.getParameter("txtApellido");
                String cel1 = request.getParameter("txtCelular");
                int ci1 = Integer.parseInt(request.getParameter("txtCi"));
                String fanac1 = request.getParameter("txtFnac");
                String direc1 = request.getParameter("txtDirec");
                String email1 = request.getParameter("txtEmail");
                String clave1 = request.getParameter("txtClave");
                int tipous1 = Integer.parseInt(request.getParameter("txtTipo"));
                int tipodep1 = Integer.parseInt(request.getParameter("txtDepar"));
                us.setNom(nom1);
                us.setApellido(apellido1);
                us.setCel(cel1);
                us.setCi(ci1);
                us.setFnac(fanac1);
                us.setDir(direc1);
                us.setEmail(email1);
                us.setClave(clave1);
                us.setTipous(tipous1);
                us.setTipodep(tipodep1);
                us.setId(ide);
                udao.actualizar(us);
                request.getRequestDispatcher("Controlador?menu=Adminuser&accion=Listar").forward(request, response);
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
                    ide= Integer.parseInt(request.getParameter("id"));
                    Usuario us = udao.listarId(ide);
                    request.setAttribute("usuario", us);
                    request.getRequestDispatcher("Controlador?menu=Adminuser&accion=Listar").forward(request, response);
                    break;
                
                case "Delete":
                ide= Integer.parseInt(request.getParameter("id"));  
                udao.delete(ide);
                request.getRequestDispatcher("Controlador?menu=Adminuser&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            
            
        }
            request.getRequestDispatcher("Adminuser.jsp").forward(request, response);
        }  
            
            
            
            
        //// TRAMITAR///
        if (menu.equals("Tramitar")) {
            
           switch (accion) {
                case "Listar":
                    List lista = docdao.listar();
                    request.setAttribute("document", lista);
                    break;
                case "ListarDoc":
                    
                    List lispar = docdao.listarDoc(ide);
                    request.setAttribute("document", lispar);
                    break;
                    case "Actualizar":
                    
                String titul = request.getParameter("txtTitulo");
                String descripcion = request.getParameter("txtDescripcion");
                String tramitant = request.getParameter("txtTramitante");
                int dep = Integer.parseInt(request.getParameter("txtDepartamento"));
                int tipo = Integer.parseInt(request.getParameter("txtTipodoc"));
                int userid = Integer.parseInt(request.getParameter("txtUser"));
                
                doc.setTitulo_doc(titul);
                doc.setDescripcion_doc(descripcion);
                doc.setTramitante(tramitant);
                doc.setDoc_dep(dep);
                doc.setDoc_tipodoc(tipo);
                doc.setDoc_user(userid);
                
                doc.setIddoc(ide);
                docdao.actualizar(doc);
                request.getRequestDispatcher("Controlador?menu=Tramitar&accion=Listar").forward(request, response);
                    break;
                case "Agregar":
                //docus = Integer.parseInt(request.getParameter("id"));   
                String titulo = request.getParameter("txtTitulo");
                String descripcion1 = request.getParameter("txtDescripcion");
                String tramitant1 = request.getParameter("txtTramitante");
                //aqui me quede
                int departamento = Integer.parseInt(request.getParameter("txtDepartamento"));
                int tipodoc = Integer.parseInt(request.getParameter("txtTipodoc"));
                int docUser = Integer.parseInt(request.getParameter("txtUser"));
                
                doc.setTitulo_doc(titulo);
                doc.setDescripcion_doc(descripcion1);      
                doc.setTramitante(tramitant1);
                doc.setDoc_dep(departamento);
                doc.setDoc_tipodoc(tipodoc);
                doc.setDoc_user(docUser); 
                docdao.agregar(doc);
                request.getRequestDispatcher("Controlador?menu=Tramitar&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                   ide= Integer.parseInt(request.getParameter("id"));
                    Documento doc = docdao.listarId(ide);
                    request.setAttribute("documento", doc);
                    request.getRequestDispatcher("Controlador?menu=Tramitar&accion=Listar").forward(request, response);
                    break;
                
                case "Delete":
                docus= Integer.parseInt(request.getParameter("id"));  
                docdao.delete(docus);
                request.getRequestDispatcher("Controlador?menu=Tramitar&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();  
        }
            request.getRequestDispatcher("Tramitar.jsp").forward(request, response);
        }
        if (menu.equals("Inicio")) {
            request.getRequestDispatcher("Inicio.jsp").forward(request, response);
        }
        if (menu.equals("Historial")) {
            request.getRequestDispatcher("Historial.jsp").forward(request, response);
        }
        if (menu.equals("Contactos")) {
            switch (accion) {
                case "Listar":
                    List lista = udao.listar();
                    request.setAttribute("usuarios", lista);
                    break; 
                case "Editar":
                    ide= Integer.parseInt(request.getParameter("id"));
                    Usuario us = udao.listarId(ide);
                    request.setAttribute("usuario", us);
                    request.getRequestDispatcher("Controlador?menu=Contactos&accion=Listar").forward(request, response);
                    break;             
                
            
            
        }
            request.getRequestDispatcher("Contactos.jsp").forward(request, response);
        }
        if (menu.equals("Perfil")) {
            switch (accion) {
                case "Listar":
                    List lista = udao.listar();
                    request.setAttribute("usuarios", lista);
                    break; 
                case "Editar":
                    ide= Integer.parseInt(request.getParameter("id"));
                    Usuario us = udao.listarId(ide);
                    request.setAttribute("usuario", us);
                    request.getRequestDispatcher("Controlador?menu=Perfil&accion=Listar").forward(request, response);
                    break;           
        }
            request.getRequestDispatcher("Perfil.jsp").forward(request, response);
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
