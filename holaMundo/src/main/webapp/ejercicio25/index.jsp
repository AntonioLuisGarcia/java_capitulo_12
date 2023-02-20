<%-- 
    Document   : index
    Created on : 17 feb 2023, 21:18:27
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 25</title>
    </head>
    <body>
        
        <%
            String[] dados = {"images/1.png","images/2.png","images/3.png","images/4.png","images/5.png","images/6.png"};
            boolean iguales = false;
            String[] tirada = new String[3];
            do{
                tirada[0] = dados[(int)(Math.random()*6)];
                tirada[1] = dados[(int)(Math.random()*6)];
                tirada[2] = dados[(int)(Math.random()*6)];

                if((tirada[0] == tirada[1]) && (tirada[0] == tirada[2])){
                    iguales = true;
                }
        %>
                <img src="<%out.print(tirada[0]);%>">
                <img src="<%out.print(tirada[1]);%>">
                <img src="<%out.print(tirada[2]);%>">
                <br>
        <%                        
            }while(!iguales);
        %>
        
        
        <a href="index.jsp">Volver a tirar</a>
    </body>
</html>
