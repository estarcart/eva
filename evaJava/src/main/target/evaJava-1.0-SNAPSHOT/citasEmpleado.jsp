<%--
  Created by IntelliJ IDEA.
  User: felix
  Date: 4/05/2023
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Citas</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body onload="mostrarFechaActual();">
<section class="homecitas">
    <div class="textobarra">
        <img
                class="logobarra"
                src="imagenes/logo-eva.png"
                alt="logo-eva"
        />
        <a href="citasEmpleadoa.jsp">
            <h1 class="negrilla">Gestionar Citas</h1>
        </a>
        <a href="Inventario.jsp">
            <h1>Inventario</h1>
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
    <div id="fecha-div"></div>

    <div class="tabla">
        <table class="la_tabla">
            <thead>
            <tr>
                <th>TIPO</th>
                <th>DOCTOR</th>
                <th>HORA</th>
                <th>OPCION</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Asistencia Facial</td>
                <td>Guillermo Gonzales</td>
                <td>8:00 AM</td>
                <td class="action-buttons">
                    <a href="citasEmpleadoa.jsp" class="botoncitas">
                        <button>RESERVAR</button>
                    </a>
                </td>
            </tr>
            <tr>
                <td>Restauracion Facial</td>
                <td>Guillermo Gonzales</td>
                <td>9:00 AM</td>
                <td class="action-buttons">
                    <a href="citasEmpleadoa.jsp" class="botoncitas">
                        <button>RESERVAR</button>
                    </a>
                </td>
            </tr>
            <tr>
                <td>Restauracion Facial</td>
                <td>Guillermo Gonzales</td>
                <td>10:00 AM</td>
                <td class="action-buttons">
                    <a href="citasEmpleadoa.jsp" class="botoncitas">
                        <button>RESERVAR</button>
                    </a>
                </td>
            </tr>
            <tr>
                <td>Asistencia Facial</td>
                <td>Guillermo Gonzales</td>
                <td>11:00 AM</td>
                <td class="action-buttons">
                    <a href="citasEmpleadoa.jsp" class="botoncitas">
                        <button>RESERVAR</button>
                    </a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</section>
</html>
