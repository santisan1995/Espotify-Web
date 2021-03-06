package Servlets;

import clases.Fabrica;
import clases.Genero;
import interfaz.Interfaz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Leandro
 */
public class TraerDatosConsultarLista extends HttpServlet {

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
        HttpSession session = request.getSession();
        String tipo = (String) request.getParameter("consultarListaTipo");
        Fabrica fabrica = Fabrica.getInstance();
        Interfaz sistema = fabrica.getInterfaz();
        // Se procede a traer una listas de listas del sistema, ya sea una lista de las listas de todos los generos o de todos los clientes
        if(tipo.equals("cliente")){
            List<String> cli = sistema.listarClientes();
            session.setAttribute("clientes", cli);
            request.getRequestDispatcher("/WEB-INF/Consultar Lista/JSPlistarListasCliente.jsp").forward(request,response);
        } else{
            ArrayList<String> listas = sistema.listarGenero();
            session.setAttribute("listas", listas);
            request.getRequestDispatcher("/WEB-INF/Consultar Lista/JSPlistarListasGenero.jsp").forward(request,response);
        }
        // No se si los dispacher llevan a un lugar diferente o no, ya que ambos llevan una lista de String
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
