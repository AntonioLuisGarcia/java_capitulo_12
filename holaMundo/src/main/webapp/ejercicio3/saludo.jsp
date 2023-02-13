<%-- 
    Document   : saludo
    Created on : 13 feb 2023, 16:34:51
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 3</title>
    </head>
    <body>
       <h1>Genera saludo</h1>
       
           Hola <% out.print(request.getParameter("nombre")); %>
    </body>
</html>
