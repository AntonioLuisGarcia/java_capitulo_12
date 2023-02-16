<%-- 
    Document   : juego
    Created on : 15 feb 2023, 17:46:49
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 18</title>
    </head>
    <body>
        <h1>Resultados</h1>
        
        <%
            int eleccion = Integer.parseInt(request.getParameter("cubilete"));
            String mensaje = "";
            int aleatorio = (int)(Math.random()*3+1); 
            
            if(eleccion == aleatorio-1){
                mensaje = "Has acertado!!!!!";
            }else{
                mensaje = "Has fallado";
            }
            
            String imagen[] = {"images/cubilete_sin_bola.png", "images/cubilete_sin_bola.png", "images/cubilete_sin_bola.png"};
            imagen[aleatorio-1] = "images/cubilete_con_1bola.png";
        %>
        
        <spam><img src="<%= imagen[0] %>"></spam>
        <spam><img src="<%= imagen[1] %>"></spam>
        <spam><img src="<%= imagen[2] %>"></spam>
        
        <h2><%= mensaje%></h2>
        
        <p><a href="index.jsp">Jugar de nuevo</a></p>
    </body>
</html>
