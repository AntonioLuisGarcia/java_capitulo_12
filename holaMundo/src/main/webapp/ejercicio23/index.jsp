<%-- 
    Document   : index
    Created on : 19 feb 2023, 11:30:58
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 23</title>
    </head>
    <body>
        <h1 style="text-align:center">Tres en raya</h1>
        
        <%
            HashMap<String,Integer> juego = new HashMap<>();
            int aleatorio = 0;
            String[] images = {"images/circulo.png","images/cruz.png","images/vacio.png"};
            juego.put("images/circulo.png",3);
            juego.put("images/cruz.png",3);
            juego.put("images/vacio.png",3);
            
            for(int i = 0 ; i < 9 ; i++){
            
                if(i%3 == 0){%>
                    <br>
                <%}
                
                do{
                    aleatorio = (int)(Math.random()*3); 
                }while(juego.get(images[aleatorio])==0);
                
                juego.put(images[aleatorio],(juego.get(images[aleatorio])-1));%>
                
                <img src="<%= images[aleatorio]%>">
                
            <%}%>
    </body>
</html>
