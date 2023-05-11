package Model;

public class ProductoModel {

    private int idproducto, cantidad;
    private String nombre_producto, identificacion_producto;

    private float valor_producto;


    public ProductoModel(){

    }

    public ProductoModel(int idproducto, int cantidad, String nombre_producto, String identificacion_producto, float valor_producto) {
        this.idproducto = idproducto;
        this.cantidad = cantidad;
        this.nombre_producto = nombre_producto;
        this.identificacion_producto = identificacion_producto;
        this.valor_producto = valor_producto;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getIdentificacion_producto() {
        return identificacion_producto;
    }

    public void setIdentificacion_producto(String identificacion_producto) {
        this.identificacion_producto = identificacion_producto;
    }

    public float getValor_producto() {
        return valor_producto;
    }

    public void setValor_producto(float valor_producto) {
        this.valor_producto = valor_producto;
    }
}
