<%-- 
    Document   : index
    Created on : 14 feb 2023, 19:46:20
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 15</title>
    </head>
    <body>
        <h1>Numeros aleatorios</h1>
        
        <form method="POST" action="aleatorios.jsp">
            Cuantos numeros aleatorios quieres:
            <br>
            <input type="nunmer" name="numeros" step="1" min="2"> 
            <input type="submit" value="Generar">
        </form>
        
    </body>
</html>
