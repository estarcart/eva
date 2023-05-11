package DAO;

import BD.conexion;
import Model.ProductoModel;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    private conexion cn = new conexion();
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public boolean registrarProducto(ProductoModel producto) {
        boolean registrado = false;
        try {
            String sql = "INSERT INTO producto(nombre_producto, identificacion_producto, cantidad, valor_producto) VALUES (?, ?, ?, ?);";
            ps = cn.conectar().prepareStatement(sql);
            ps.setString(1, producto.getNombre_producto());
            ps.setString(2, producto.getIdentificacion_producto());
            ps.setInt(3, producto.getCantidad());
            ps.setFloat(4, producto.getValor_producto());
            int resultado = ps.executeUpdate();
            if (resultado > 0) {
                registrado = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                if (ps != null) ps.close();
                if (cn.conectar() != null) cn.conectar().close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return registrado;
    }

    public List<ProductoModel> obtenerProductos() {
        List<ProductoModel> productos = new ArrayList<>();
        try {
            String sql = "SELECT * FROM producto;";
            ps = cn.conectar().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductoModel producto = new ProductoModel();
                producto.setNombre_producto(rs.getString("nombre_producto"));
                producto.setIdentificacion_producto(rs.getString("identificacion_producto"));
                producto.setCantidad(rs.getInt("cantidad"));
                producto.setValor_producto(rs.getFloat("valor_producto"));
                productos.add(producto);
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cn.conectar() != null) cn.conectar().close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return productos;
    }
}

