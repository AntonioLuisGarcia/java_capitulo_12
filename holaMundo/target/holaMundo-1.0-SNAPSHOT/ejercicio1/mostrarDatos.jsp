<%-- 
    Document   : mostrarDatos
    Created on : 13 feb 2023, 9:23:45
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css";
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Personales</h1>
        <div class="data-container"> 
            <div>
                <img src="https://via.placeholder.com/300/09f/fff.png">
            </div>
            <div class="form-container">
                <%
                    request.setCharacterEncoding("UTF-8");
                    String nombre = request.getParameter("nombre");
                    String apellidos = request.getParameter("apellidos");
                    int edad = Integer.valueOf(request.getParameter("edad"));
                %>
                
                <h2>Nombre</h2>
                <p><%out.print(nombre);%></p>
                
                <h2>Apellidos</h2>
                <p><%out.print(apellidos);%></p>
                
                <h2>Edad</h2>
                <p><%out.print(edad);%></p>
            </div>
        </div>
    </body>
</html>
