<%-- 
    Document   : index
    Created on : 14 feb 2023, 12:06:25
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 9</title>
    </head>
    <body>
        <h1>Piramide de gatos </h1>
        
        <form method="POST" action="piramide.jsp">
            Diga la altura de la piramide[1-10]:
            <br>
            <input type="text" name="altura" step="1" max="10"> 
            <input type="submit" value="Generar">
        </form>
    </body>
</html>
