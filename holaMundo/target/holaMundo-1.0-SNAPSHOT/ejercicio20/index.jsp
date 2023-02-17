<%-- 
    Document   : index
    Created on : 17 feb 2023, 11:02:48
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 20</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>Heladeía</h1>
        
        <p id="cabecera">Seleccione los porcentajes para prepara su helado</p>
        <div id="helados">
            
            <form method="POST" action="helado.jsp">

                <div>
                    <p><img src="images/chocolate.jpg"></p>
                    Chocolate <input type="number" value="0" min="0" max="100" name="chocolate"> %
                </div>
                <div>
                    <p><img src="images/fresa.jpg"></p>
                    Fresa <input type="number" value="0" min="0" max="100" name="fresa"> %
                </div>
                <div>
                    <p><img src="images/vainilla.jpg"></p>
                    Vainilla <input type="number" value="0" min="0" max="100" name="vainilla"> %
                </div>
                
                <input type="submit" value="Prepara helado">
            </form>
            
            <p>
      <%=
        session.getAttribute("error") == null ?
                "" : session.getAttribute("error")
      %>
      <% session.removeAttribute("error"); %>
      </p>
            
        </div>
    </body>
</html>
