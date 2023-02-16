<%-- 
    Document   : index
    Created on : 15 feb 2023, 20:08:22
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 19</title>
    </head>
    <body>
        <h1>Juego del Gato Chino de la Suerte</h1>
        
        <form method="POST" action="juego.jsp">
            Dinero de apuesta:
            <br>
            <input type="number" name="dinero" min="10"> 
            <input type="submit" value="Generar">
        </form>
        
    </body>
    
    
</html>
