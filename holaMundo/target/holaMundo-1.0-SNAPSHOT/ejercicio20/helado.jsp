<%-- 
    Document   : helado
    Created on : 17 feb 2023, 11:03:17
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
        <h3 id="cabecera">Aqui tiene su helado</h3>
        
        <%
            int choco = Integer.parseInt(request.getParameter("chocolate"));
            int fresa = Integer.parseInt(request.getParameter("fresa"));
            int vainilla = Integer.parseInt(request.getParameter("vainilla"));
            int suma = vainilla + choco + fresa;
            
            if(suma > 100){
                session.setAttribute("error", "La suma de porcentajes no pueden ser mayor que el 100%");
                response.sendRedirect("index.jsp");
            }
        %>
        
        <div id="tarrina">
            <div style="height: <%out.print(100-suma);%>px"></div>
            
            <%if(choco >= 0){%>
                <div id="choco" style="height: <%out.print(choco);%>px">Chocolate <%=choco%> %</div>
            <%}%>
            
            <%if(fresa >= 0){%>
                <div id="fresa" style="height: <%out.print(fresa);%>px">Fresa <%=fresa%> %</div>
            <%}%>
            
            <%if(vainilla >= 0){%>
                <div id="vainilla" style="height: <%out.print(vainilla);%>px">Vainilla <%=vainilla%> %</div>
            <%}%>
        </div>
    </body>
</html>
