<%--
  Created by IntelliJ IDEA.
  User: felix
  Date: 2/05/2023
  Time: 12:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="styles.css">
<head>
    <title>Registro de Ventas</title>
</head>
<style>
    body {
        background-image: url(imagenes/background.png);
        background-size: cover;
    }
</style>
<body>
<section class="homecitas">
    <div class="textobarra">
        <img
                class="logobarra"
                src="imagenes/logo-eva.png"
                alt="logo-eva"
        />
        <a href="../citas/citasempleado.html">
            <h1>Gestionar Citas</h1>
        </a>
        <a href="Inventario.jsp">
            <h1>Inventario</h1>
        </a>
        <a href="registroVenta.jsp">
            <h1 class="negrilla">Ventas</h1>
            <br /><br /><br />
        </a>
        <a href="index.jsp">
            <h1>Cerrar sesión</h1>
        </a>
        <div class="barra"></div>
    </div>

    <div class="ventas">
        <h1>Registrar una venta:</h1>
        <form class="ventasformulario" id="formproduct" method="post" action="SvVentaController" >
            <legend class="legend_venta">Ingresa los datos pedidos:</legend>
            <label for="nombre_producto">NOMBRE DEL PRODUCTO:</label>
            <input
                    type="text"
                    id="nombre_producto"
                    name="nombre_productoventa"
                    class="input_venta"
            />

            <label for="cantidad_producto">CANTIDAD VENDIDA:</label>
            <input
                    type="number"
                    id="cantidad_producto"
                    name="cantidad_vendida"
                    class="input_venta"
            />

            <label for="total_producto">TOTAL:</label>
            <input
                    type="text"
                    id="total_producto"
                    name="valor_total"
                    class="input_venta"
            />

            <button type="submit" name="btn-regventa">REGISTRAR VENTA</button>
        </form>
    </div>
</section>
</body>
</html>
