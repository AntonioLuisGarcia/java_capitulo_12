<%-- 
    Document   : index
    Created on : 18 feb 2023, 13:45:30
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 20</title>
    </head>
    <body style="background-color: brown">
        <h1>Tablero de ajedrez</h1>
        
        <%
            String[] tablero = new String[64];
            int posicionCaballo = 0;
            int posicionAlfil = 0;
            
            for(int i = 0 ; i < 64 ; i++){
                tablero[i] = "images/transparente.png";
            }
            
            do{
                posicionCaballo = (int)(Math.random()*64);
                posicionAlfil = (int)(Math.random()*64);
                tablero[posicionCaballo] = "images/caballonegro.png";
                tablero[posicionAlfil] = "images/alfilblanco.png";
            }while(posicionCaballo == posicionAlfil);
        %>
        
        <table>
            <tr>
            <% for(int i = 0 ; i < 64 ; i++){
            
                if((i)%8==0){ %>
                    </tr>
                    <br>
                    <tr>
                <%}%>  
                                  
                <td> <img src="<%=tablero[i]%>"> </td> 
            
        <%}%>
        </table>
    </body>
</html>
