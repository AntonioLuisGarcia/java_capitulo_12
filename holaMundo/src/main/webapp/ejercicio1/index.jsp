<%-- 
    Document   : index
    Created on : 13 feb 2023, 8:35:55
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
            <div>
                <form method="POST" action="mostrarDatos.jsp">
                    <div class="item-input">
                        <label for="nombre">
                            Nombre:
                        </label>
                        <input type="text" name="nombre">
                    </div>
                    
                    <div class="item-input">
                        <label for="apellidos">
                            Apellidos:
                        </label>
                        <input type="text" name="nombre">
                    </div>
                    
                    <div class="item-input">
                        <label for="edad">
                            Edad:
                        </label>
                        <input type="text" name="edad" min="0" max="100" step="1">
                    </div>
                    
                    <div class="form-footer">
                        <input type="submit">
                    </div>
                    
                </form>
            </div>
        </div>
    </body>
</html>
