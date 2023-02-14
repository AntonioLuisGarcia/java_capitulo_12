<%-- 
    Document   : index
    Created on : 14 feb 2023, 19:32:04
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 14</title>
    </head>
    <body>
        <h1>Sucesion Aurea</h1>
        
        <form method="POST" action="fibonacci.jsp">
            Cuantos numeros de la sucesion quiere:
            <br>
            <input type="text" name="numeros" step="1" min="3"> 
            <input type="submit" value="Generar">
        </form>
    </body>
</html>
