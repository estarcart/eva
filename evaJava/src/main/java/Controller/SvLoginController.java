package Controller;

import DAO.loginDAO;
import Model.UsuarioModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "SvLoginController", value = "/SvLoginController")
public class SvLoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try(PrintWriter out = response.getWriter()){
            UsuarioModel um = new UsuarioModel();
            loginDAO lg = new loginDAO();
            int rspta = 0;
            if (request.getParameter("btn-login") != null){
                String usuario_nombre = request.getParameter("txtusuario");
                String usuario_contrasena = request.getParameter("txtclave");
                um.setUsuario_nombre(usuario_nombre);
                um.setUsuario_contrasena(usuario_contrasena);
                try {
                    rspta = lg.validarLogin(um);
                }catch (Exception ex){
                    Logger.getLogger(SvLoginController.class.getName()).log(Level.SEVERE, null, ex);
                }
                if (rspta != 0 ){
                    response.sendRedirect("homeEmpleado.jsp");
                }else {
                    response.sendRedirect("index.jsp?rspta=" + rspta);
                }
            }

        }


    }

}
