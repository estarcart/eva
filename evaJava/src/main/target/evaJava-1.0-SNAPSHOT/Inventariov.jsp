<%--
  Created by IntelliJ IDEA.
  User: felix
  Date: 4/05/2023
  Time: 1:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="styles.css">
<head>
    <title>Inventario</title>
</head>
<body>
<section class="homecitas">

    <div class="textobarra">
        <img
                class="logobarra"
                src="imagenes/logo-eva.png"
                alt="logo-eva"
        />
        <a href="citasEmpleado.jsp">
            <h1>Gestionar Citas</h1>
        </a>
        <a href="Inventario.jsp">
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
            <h1>Inventario</h1>
            <div class="tablabtn">
                <a href="agregarProducto.jsp" class="btnagregar">
                    <button>AGREGAR</button>
                </a>

                <button class="img3">
                    <img src="imagenes/recarga.png" alt="recarga" />
                </button>

                <label class="buscadorusuario">
                    <input type="text" class="buscadorinventario" placeholder="Buscar producto">
                    <button type="submit" class="lupita">
                        <img src="imagenes/lupa.png">
                    </button>
                </label>

                <a href="historial.jsp" class="btnagregar">
                    <button>HISTORIAL</button>
                </a>
            </div>
            <table id="tablaProductos" class="la_tabla" hidden>
                <thead>
                <tr>
                    <th>NOMBRE</th>
                    <th>CODIGO</th>
                    <th>CANTIDAD</th>
                    <th>PRECIO c/u</th>
                    <th>OPCION</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>crema facial</td>
                        <td>1</td>
                        <td>199</td>
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
