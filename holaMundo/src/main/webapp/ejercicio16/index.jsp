<%-- 
    Document   : index
    Created on : 14 feb 2023, 20:16:22
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 16</title>
        
        <style>body{background-color:green}</style>
    </head>
    <body>
        <h1>Tirada de dados</h1>
        
        <%
            String[] caras = {"images/as.png","images/j.png","images/k.png","images/ocho.png","images/q.png","images/siete.png"};
            int aleatorio = 0;
            
            for(int i = 1 ; i <= 3 ; i++){
                aleatorio = (int)(Math.random()*6);
                out.print("<img src = \""+caras[aleatorio]+"\">");
            }
            
        %>
        
    </body>
</html>
