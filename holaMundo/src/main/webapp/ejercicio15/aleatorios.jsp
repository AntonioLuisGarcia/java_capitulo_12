<%-- 
    Document   : aleatorios
    Created on : 14 feb 2023, 19:49:00
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 15</title>
    </head>
    <body>
        <h1>Numeros aleatorios</h1>

        <%
            int numeros = Integer.parseInt(request.getParameter("numeros"));
            int numero;
            boolean primo = true;
            
            for(int i = 1 ; i <= numeros ; i++){
            
                primo = true;
                numero = (int)(Math.random()*200+1);

                for(int j = 2 ; j < numero ; j++){
                    if(numero%j == 0){
                        primo = false;
                    }
                }

                if(primo){
                    out.print("<span style=\"color:red\">" + numero + "</span> " + " - ");
                }else{
                    out.print(numero + " - ");
                }
            }
        %>
    </body>
</html>
