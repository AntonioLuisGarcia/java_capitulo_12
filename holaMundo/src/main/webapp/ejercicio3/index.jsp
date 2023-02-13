<%-- 
    Document   : index
    Created on : 13 feb 2023, 16:29:11
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 3</title>
    </head>
    <body>
        <h1>Genera saludo</h1>
        
        <div>
            <form method="post" action="saludo.jsp">
                Introduzca su nombre:
                <input type="text" name="nombre">
                <input type="submit" value="OK">
            </form>
        </div>
    </body>
</html>
