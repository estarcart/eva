package Controller;

import DAO.ProductoDAO;
import DAO.VentaDAO;
import Model.ProductoModel;
import Model.VentaModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "SvVentaController", value = "/SvVentaController")
public class SvVentaController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        VentaModel vm = new VentaModel();
        VentaDAO vd = new VentaDAO();
        boolean rspta = false;
        if (request.getParameter("btn-regventa") != null) {
            String nombre_productoventa = request.getParameter("nombre_productoventa");
            int cantidad_vendida = Integer.parseInt(request.getParameter("cantidad_vendida"));
            float valor_total = Float.parseFloat(request.getParameter("valor_total"));
            vm.setNombre_productoventa(nombre_productoventa);
            vm.setCantidad_vendida(cantidad_vendida);
            vm.setValor_total(valor_total);
            try {
                rspta = vd.registrarVenta(vm);
            } catch (Exception ex) {
                Logger.getLogger(SvProductoController.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rspta) {
                response.sendRedirect("Inventariov.jsp");
            } else {
                response.sendRedirect("registroVenta.jsp?rspta=" + rspta);
            }
        }
    }
}
