package DAO;

import BD.conexion;
import Model.UsuarioModel;

import java.sql.ResultSet;

public class loginDAO {

    int rspta = 0;
    String sql="";
    ResultSet rs = null;
    conexion cn = new conexion();
    public int validarLogin(UsuarioModel um) throws Exception {
        sql = "select count(idusuario) as cantidad from usuario where usuario_nombre='" + um.getUsuario_nombre() + "' and usuario_contrasena='" + um.getUsuario_contrasena() + "';";
        rs = cn.ejecutarConsulta(sql);
        while (rs.next()){
            rspta = rs.getInt("cantidad");
        }
        return rspta;
    }

}
