<%-- 
    Document   : tabla
    Created on : 13 feb 2023, 17:41:26
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
        <table style="border:1px red">
        <%
            int numero = Integer.parseInt(request.getParameter("numero"));
             
            for(int i = 1 ; i <= 10 ; i++){
            out.print("<tr><td>" + i + " * " + numero + "</td><td>" + (i*numero) + "</td></tr>");
            }
        %>
        </table>
    </body>
</html>
