<%--
  Created by IntelliJ IDEA.
  User: felix
  Date: 1/05/2023
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="styles.css">
<head>
    <title>Menu</title>
</head>
<style>
    body {
        background-image: url(imagenes/background.png);
        background-size: cover;
    }
</style>
<body>
<section class="homeop">
    <div>
        <img
                class="logoinicio1"
                src="imagenes/logo-eva.png"
                alt="logo-eva"
        />
    </div>
    <div class="textobarra">
        <a href="citasEmpleado.jsp">
            <h1>Gestionar Citas</h1>
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
    </div>
</section>
</body>
</html>
