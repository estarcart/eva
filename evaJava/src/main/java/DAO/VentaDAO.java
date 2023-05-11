package DAO;

import BD.conexion;
import Model.VentaModel;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VentaDAO {
    private conexion cn = new conexion();
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public boolean registrarVenta(VentaModel venta) {
        boolean registrado = false;
        try {
            String sql = "INSERT INTO venta(cantidad_vendida, nombre_productoventa, valor_total) VALUES (?, ?, ?);";
            ps = cn.conectar().prepareStatement(sql);
            ps.setInt(1, venta.getCantidad_vendida());
            ps.setString(2, venta.getNombre_productoventa());
            ps.setFloat(3, venta.getValor_total());
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
}

