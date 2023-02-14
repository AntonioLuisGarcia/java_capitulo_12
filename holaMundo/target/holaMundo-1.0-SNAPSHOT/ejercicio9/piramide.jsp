<%-- 
    Document   : piramide
    Created on : 14 feb 2023, 12:09:56
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 9</title>
    </head>
    <body>
        <h1>Piramide de gatos</h1>
        
        <%
            int altura = Integer.parseInt(request.getParameter("altura"));
            for(int i = 1 ; i <= altura ; i++){
                for(int j = i ; j <= altura-1 ; j++){
                    out.print("<img src=\"assets/images/blanco.jpg\">");
                }
                
                for(int j = 1 ; j <= 2*i-1 ; j++){
                    out.print("<img src=\"assets/images/gatoloco.jpg\">");
                }
                
                out.print("<br>");
            }
        %>
    </body>
</html>
