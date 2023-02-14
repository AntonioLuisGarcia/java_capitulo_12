<%-- 
    Document   : calcula_nota
    Created on : 14 feb 2023, 12:27:42
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 10</title>
    </head>
    <body>
        <h1>Cuestionario</h1>
        
        <%
            int punto = 0;
            
            for(Integer i = 1 ; i <= 10 ; i++){
                punto += Integer.valueOf(request.getParameter("p" + i.toString()));
            }
            
            out.print("Has sacado " + punto + " puntos");
        %>
        
    </body>
</html>
