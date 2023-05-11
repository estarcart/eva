package Model;

public class UsuarioModel {

    private int idusuario;
    private String usuario_nombre, usuario_contrasena;

    public UsuarioModel(){

    }

    public UsuarioModel(int idusuario, String usuario_nombre, String usuario_contrasena) {
        this.idusuario = idusuario;
        this.usuario_nombre = usuario_nombre;
        this.usuario_contrasena = usuario_contrasena;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario_nombre() {
        return usuario_nombre;
    }

    public void setUsuario_nombre(String usuario_nombre) {
        this.usuario_nombre = usuario_nombre;
    }

    public String getUsuario_contrasena() {
        return usuario_contrasena;
    }

    public void setUsuario_contrasena(String usuario_contrasena) {
        this.usuario_contrasena = usuario_contrasena;
    }
}
