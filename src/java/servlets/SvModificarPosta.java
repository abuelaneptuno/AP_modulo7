package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;
import logica.Persona;

@WebServlet(name = "SvModificarPosta", urlPatterns = {"/SvModificarPosta"})
public class SvModificarPosta extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = parseInt(request.getParameter("id"));
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        control.encontrarPersona(id).setDni(dni);
        control.encontrarPersona(id).setNombre(nombre);
        control.encontrarPersona(id).setApellido(apellido);
        control.encontrarPersona(id).setTelefono(telefono);
        
        control.modificarPersona(control.encontrarPersona(id));
        
        response.sendRedirect("index.jsp");
    }

@Override
    public String getServletInfo() {
        return "Short description";
    }

}
