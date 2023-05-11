package Model;

public class VentaModel {
    private int idventa, cantidad_vendida;
    private String nombre_productoventa;

    private float valor_total;

    public VentaModel(){

    }

    public VentaModel(int idventa, int cantidad_vendida, String nombre_productoventa, float valor_total) {
        this.idventa = idventa;
        this.cantidad_vendida = cantidad_vendida;
        this.nombre_productoventa = nombre_productoventa;
        this.valor_total = valor_total;
    }

    public int getIdventa() {
        return idventa;
    }

    public void setIdventa(int idventa) {
        this.idventa = idventa;
    }

    public int getCantidad_vendida() {
        return cantidad_vendida;
    }

    public void setCantidad_vendida(int cantidad_vendida) {
        this.cantidad_vendida = cantidad_vendida;
    }

    public String getNombre_productoventa() {
        return nombre_productoventa;
    }

    public void setNombre_productoventa(String nombre_productoventa) {
        this.nombre_productoventa = nombre_productoventa;
    }

    public float getValor_total() {
        return valor_total;
    }

    public void setValor_total(float valor_total) {
        this.valor_total = valor_total;
    }
}
