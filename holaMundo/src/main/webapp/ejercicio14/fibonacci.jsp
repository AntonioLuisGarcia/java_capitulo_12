<%-- 
    Document   : fibonacci
    Created on : 14 feb 2023, 19:32:14
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 14</title>
    </head>
    <body>
        <h1>Sucesion Aurea</h1>
        
        <%
            int numeros = Integer.parseInt(request.getParameter("numeros"));
            int n1 = 0;
            int n2 = 1;
            int aux = 0;
            
            for(int i = 1 ; i <= numeros ; i++){
                out.print(n1 + ",");
                aux = n2;
                n2 += n1;
                n1 = aux;
            }
        %>
    </body>
</html>
