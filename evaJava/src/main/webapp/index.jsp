<%--
  Created by IntelliJ IDEA.
  User: felix
  Date: 1/05/2023
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="styles.css">
<head>
    <title>Login</title>
</head>
<style>
    body {
        background-image: url(imagenes/background.png);
        background-size: cover;
    }
</style>

<body>
<header>
    <nav>
        <ul>
            <a href="/vistas/EVA/inicioeva.html"><img src="imagenes/volver.png"class="volver-boton"></a>
        </ul>
    </nav>
</header>
<section class="homeop">
    <div>
        <img
                class="logoinicio1"
                src="imagenes/logo-eva.png"
                alt="logo-eva"
        />
    </div>
    <form method="post" action="SvLoginController" class="inicio_empleado">
        <legend>Inicia sesión como empleado:</legend>
        <input
                type="text"
                id="email_empleado"
                name="txtusuario"
                class="input_login_empleado"
                placeholder="E-mail"
        />

        <input
                type="password"
                id="password_empleado"
                name="txtclave"
                class="input_login_empleado"
                placeholder="Contraseña"
        />

        <button type="submit" name="btn-login">Iniciar sesión</button>
    </form>
</section>
</body>
</html>
