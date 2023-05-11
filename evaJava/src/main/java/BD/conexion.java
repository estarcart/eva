package BD;

import java.sql.*;

public class conexion {
    public static String url = "jdbc:mysql://localhost:3306/eva?serverTimezone=UTC";
    public static String usuario = "root";
    public static String clave = "toor";
    public static String clase = "com.mysql.cj.jdbc.Driver";
    private static Connection conexion = null;

    public static Connection conectar(){
        try {
            Class.forName(clase);
            conexion = DriverManager.getConnection(url, usuario, clave);
            System.out.println("Conexion exitosa");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return conexion;
    }

    public ResultSet ejecutarConsulta(String sql, Object... params) throws SQLException {
        PreparedStatement ps = conectar().prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            ps.setObject(i + 1, params[i]);
        }
        ResultSet rs = ps.executeQuery();
        return rs;
    }

    public int ejecutarActualizacionP(String sql, Object... params) throws SQLException {
        PreparedStatement ps = conectar().prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            ps.setObject(i + 1, params[i]);
        }
        int r = ps.executeUpdate();
        return r;
    }
}


