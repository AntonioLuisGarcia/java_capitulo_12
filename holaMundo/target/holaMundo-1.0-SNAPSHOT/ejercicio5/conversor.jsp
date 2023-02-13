<%-- 
    Document   : conversor
    Created on : 13 feb 2023, 17:11:08
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 5</title>
    </head>
    <body>
        <h1>Conversor euros-pesetas</h1>
        <% 
            double euros = Double.valueOf(request.getParameter("euros"));
            double pesetas = euros*166;
            out.print(euros + " euros son " + pesetas + " pesetas");
        %>
    </body>
</html>
