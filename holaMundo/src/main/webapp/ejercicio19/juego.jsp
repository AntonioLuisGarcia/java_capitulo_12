<%-- 
    Document   : juego
    Created on : 15 feb 2023, 20:08:45
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 19</title>
    </head>
    <body>
        <h1>Juego del Gato Chino de la Suerte</h1>
        
        <%
            int dinero = Integer.parseInt(request.getParameter("dinero"));
            String[] fotos = {"images/calavera.png","images/gatochinosuerte.gif","images/mediolimon.jpg"};
            String[] mensaje = {"Lo siento, has perdido.", "Has doblado tu dinero.", "Ha perdido la mitad."};
            int aleatorio = (int)(Math.random()*10);
            int foto = 0;
            
            if(aleatorio < 2){
                foto = 0;
                dinero = 0;
            }else if(aleatorio < 6){
                foto = 1;
                dinero *= 2;
            }else{
                foto = 2;
                dinero /= 2;
            }
        %>
        
        
        <p>
          <img src="<%= fotos[foto] %>"><br>
          <h2><%= mensaje[foto] %></h2>
        </p>
        
        <p>Tiene <%=dinero%> euros</p>
        
         <%
            if ((foto == 2) || (foto == 1)) { // El jugador puede seguir jugando o plantarse
        %>
          <form method="post" action="juego.jsp">
            <input type="hidden" name="dinero" value="<%= dinero %>">
            <input type="submit" value="Sigo jugando">
          </form>

          <form method="post" action="final.jsp">
            <input type="hidden" name="dinero" value="<%= dinero %>">
            <input type="submit" value="Me planto">
          </form> 
      <%
        } else {
      %>
          <form method="post" action="index.jsp">
            <input type="submit" value="Volver a jugar">
          </form>
      <%
        } // if     
      %>
        
    </body>
</html>
