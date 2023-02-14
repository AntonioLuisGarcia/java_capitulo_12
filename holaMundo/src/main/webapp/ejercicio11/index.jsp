<%-- 
    Document   : index
    Created on : 14 feb 2023, 13:11:19
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 11</title>
    </head>
    <body>
        <h1>Calendario</h1>
        
        <form method="POST" action="genera_calendario.jsp">
            Mes:
            <input type="text" name="mes" default="Enero"> 
            <br>
            Año:
            <input type="text" name="ano" default="2023"> 
            <br>
            Texto:
            <input type="text" name="texto" >
            <br>
            Dia 1:
            <input type="text" name="dia1">
            <br>
            Numero de dias:
            <input type="text" name="numdias"> 
            <br>
            <input type="submit" value="Generar">
        </form>
        
    </body>
</html>
