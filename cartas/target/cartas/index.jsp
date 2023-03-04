<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="modelos.Mazo" %>
<%@ page import="modelos.CartaTemplate" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/styles.css" type="text/css">
        <link  rel="icon"   href="./assets/img/favicon-32x32.png" type="image/png" />
    </head>
<body>

    <div class="entrada" style="margin-top: 7%;">
        <form method="post" action="juego1.jsp">
            <p>Ingrese su saldo:</p>
            <input type="hidden" value="0" name="iniciado">
            <input type="number" name="dinero" min="1" step="1" value="1">
            <input class="boton" type="submit" value="Jugar">
        </form>
    </div>

    <button class="botonInfo"><a href="info.html">Info</a></button>
    
</body>
</html>