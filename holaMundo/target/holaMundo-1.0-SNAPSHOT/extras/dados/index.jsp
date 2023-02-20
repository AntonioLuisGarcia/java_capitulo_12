<%-- 
    Document   : index
    Created on : 19 feb 2023, 12:33:54
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juego de los dados</title>
    </head>
    <body>
        <h1>Juego de los dados</h1>
        <h3>Elige las opciones</h3>
        
        <form method="POST" action="juego.jsp">
            Dinero de apuesta:
            <br>
            <input type="number" name="dinero" min="0" max="10000" step="1"> 
            <br>
            Numero de dado:
            <br>
            <input type="number" name="cara" max="6" min="1" step="1"> 
            <input type="submit" value="Generar">
        </form>
    </body>
</html>
