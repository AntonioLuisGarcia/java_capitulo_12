<%-- 
    Document   : index
    Created on : 13 feb 2023, 17:41:19
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 8</title>
    </head>
    <body>
        <h1>Tabla de Multiplicar</h1>
        
        <form method="POST" action="tabla.jsp">
            Diga el numero de tabla de multiplicar:
            <br>
            <input type="text" name="numero" step="1"> 
            <input type="submit" value="Generar">
        </form>
    </body>
</html>
