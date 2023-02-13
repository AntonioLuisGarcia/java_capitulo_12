<%-- 
    Document   : conversor
    Created on : 13 feb 2023, 17:30:40
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 6</title>
    </head>
    <body>
        <h1>Conversor pesetas-euro</h1>
        
        <% 
            double pesetas = Double.valueOf(request.getParameter("pesetas"));
            double euros = pesetas/166;
            out.print(pesetas + " pesetas son " + euros + " euros");
        %>
    </body>
</html>
