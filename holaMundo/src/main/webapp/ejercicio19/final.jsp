<%-- 
    Document   : final
    Created on : 15 feb 2023, 20:08:56
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
        
        <%
            int dinero = Integer.parseInt(request.getParameter("dinero"));
        %>
        
        <h2>Has ganado <%= dinero%> euros</h2>
        
        <p> <a href="index.jsp">Volver al Inicio</a></p>
        
    </body>
</html>
