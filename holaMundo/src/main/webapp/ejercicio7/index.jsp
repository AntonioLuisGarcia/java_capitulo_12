<%-- 
    Document   : index
    Created on : 13 feb 2023, 17:35:12
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 7</title>
    </head>
    <body>
        <h1>Conversor</h1>
        
        <form class="dinero" method="post" action="../ejercicio6/conversor.jsp">
            Pesetas a euros:
            <input type="text" name="pesetas"> 
            <input type="submit" value="Convertir">
        </form>
        
        <form method="POST" action="../ejercicio5/conversor.jsp">
            Euros a pesetas:
            <input type="text" name="euros"> 
            <input type="submit" value="Convertir">
        </form>
    </body>
</html>
