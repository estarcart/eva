<%--
  Created by IntelliJ IDEA.
  User: felix
  Date: 4/05/2023
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="styles.css">
<head>
    <title>Historial</title>
</head>
<body>
<section class="homecitas">

    <div class="textobarra">
        <img
                class="logobarra"
                src="imagenes/logo-eva.png"
                alt="logo-eva"
        />
        <a href="citasEmpleadoa.jsp">
            <h1>Gestionar Citas</h1>
        </a>
        <a href="Inventariov.jsp">
            <h1 class="negrilla">Inventario</h1>
        </a>
        <a href="registroVenta.jsp">
            <h1>Ventas</h1>
            <br /><br /><br />
        </a>
        <a href="index.jsp">
            <h1>Cerrar sesión</h1>
        </a>
        <div class="barra"></div>
    </div>
    <div class="tablaall">
        <div class="tabla">
            <h1>Historial</h1>
            <table id="tablaProductos" class="la_tabla" hidden>
                <thead>
                <tr>
                    <th>Tipo</th>
                    <th>Hora</th>
                    <th>Valor</th>
                    <th>OPCION</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Venta</td>
                    <td>4:00 PM</td>
                    <td>70.000</td>
                    <td class="action-buttons">
                        <div class="img1div">
                            <img src="imagenes/PencilSimple.png" alt="Editar" onclick="mostrarVentanaEmergenteEPS1()" />
                        </div>
                        <div class="img2div">
                            <img src="imagenes/Trash.png" alt="Eliminar" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Cita</td>
                    <td>8:00 AM</td>
                    <td>3.000</td>
                    <td class="action-buttons">
                        <div class="img1div">
                            <img src="imagenes/PencilSimple.png" alt="Editar" onclick="mostrarVentanaEmergenteEPS1()" />
                        </div>
                        <div class="img2div">
                            <img src="imagenes/Trash.png" alt="Eliminar" />
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
            <button class="boton_generar_informe" onclick="mostrarTabla()">GENERAR INFORME</button>
        </div>
    </div>
</section>
<script>
    function mostrarTabla() {
        document.getElementById("tablaProductos").removeAttribute("hidden");
    }
</script>
</body>
</html>
