package Controller;

import DAO.ProductoDAO;
import Model.ProductoModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "SvProductoController", value = "/SvProductoController")
public class SvProductoController extends HttpServlet {

    private ProductoDAO pd = new ProductoDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductoModel> productos = pd.obtenerProductos();
        for (ProductoModel producto : productos) {
            System.out.println(producto.getNombre_producto() + " " + producto.getIdentificacion_producto() + " " + producto.getCantidad() + " " + producto.getValor_producto());
        }
        request.setAttribute("productos", productos);
        request.getRequestDispatcher("Inventario.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try (PrintWriter out = response.getWriter()) {
            ProductoModel pm = new ProductoModel();
            ProductoDAO pd = new ProductoDAO();
            boolean rspta = false;
            if (request.getParameter("btn-producto") != null) {
                String nombre_producto = request.getParameter("txtnombre_producto");
                String identificacion_producto = request.getParameter("txtidproducto");
                int cantidad = Integer.parseInt(request.getParameter("txtcantidad"));
                float valor_producto = Float.parseFloat(request.getParameter("valor_producto"));
                pm.setNombre_producto(nombre_producto);
                pm.setIdentificacion_producto(identificacion_producto);
                pm.setCantidad(cantidad);
                pm.setValor_producto(valor_producto);
                try {
                    rspta = pd.registrarProducto(pm);
                } catch (Exception ex) {
                    Logger.getLogger(SvProductoController.class.getName()).log(Level.SEVERE, null, ex);
                }
                if (rspta) {
                    response.sendRedirect("Inventariop.jsp");
                } else {
                    response.sendRedirect("agregarProducto.jsp?rspta=" + rspta);
                }
            }
        }
    }
}