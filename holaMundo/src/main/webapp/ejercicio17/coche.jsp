<%-- 
    Document   : coche
    Created on : 15 feb 2023, 17:15:59
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 17</title>
    </head>
    <body>
        <h1>Acabado del coche</h1>
        
        <%
            String tapiceria = request.getParameter("tapiceria");
            String moldura = request.getParameter("moldura");
            String coche = tapiceria + moldura + ".jpg";
        %>
        
        <p><img src ="images/<%= coche%>"></p>
        
        <p><a href="index.jsp">Volver</a></p>
    </body>
</html>
