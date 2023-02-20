<%-- 
    Document   : juego
    Created on : 19 feb 2023, 12:38:27
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juego de los dados</title>
    </head>
    <body>
        <h1>Resultado</h1>
        
                <%
                    String[] dados = {"images/1.png","images/2.png","images/3.png","images/4.png","images/5.png","images/6.png"};
                    String[] tirada = new String[3];
                    String mensaje = "";
                    int dado1 = (int)(Math.random()*6);
                    int dado2 = (int)(Math.random()*6);
                    int dado3 = (int)(Math.random()*6);

                    tirada[0] = dados[dado1];
                    tirada[1] = dados[dado2];
                    tirada[2] = dados[dado3];
                    int carasCoincidentes = 0;
                    int cara = Integer.parseInt(request.getParameter("cara"));
                    int dinero = Integer.parseInt(request.getParameter("dinero"));
                    
                    if(cara == (dado1+1)){
                        carasCoincidentes++;
                    }

                    if(cara == (dado2+1)){
                        carasCoincidentes++;
                    }
                    
                    if(cara == (dado3+1)){
                        carasCoincidentes++;
                    }
                    
                    if(carasCoincidentes > 0){
                        if(carasCoincidentes == 1){
                            mensaje = "Hay 1 " + cara;
                            dinero = (int)((double)dinero*1.5);
                        }else if(carasCoincidentes == 2){
                            mensaje = "Hay 2 " + cara;
                            dinero *= 3;
                        }else{
                            mensaje = "Hay 3 " + cara;
                            dinero *= 5;
                        }
                    }else{
                        dinero = (int)((double)dinero*0.25);
                        mensaje = "No hay ningun " + cara;
                    }
                %>    
                
                <img src="<%out.print(tirada[0]);%>">
                <img src="<%out.print(tirada[1]);%>">
                <img src="<%out.print(tirada[2]);%>">
                <br>
                
                <h3>
                    <%=mensaje%>
                    <br>
                    Su saldo es de <%=dinero%>
                </h3>
                
            <%
                if (dinero != 0) { // El jugador puede seguir jugando o plantarse
            %>
                <form method="post" action="juego.jsp">
                  <input type="hidden" name="dinero" value="<%= dinero %>">
                  <input type="hidden" name="cara" value="<%= cara %>">
                  <input type="submit" value="Sigo jugando">
                </form>
            <%
              } else {
            %>
                <form method="post" action="index.jsp">
                  <input type="submit" value="Inicio">
                </form>
            <%
              }      
            %>
    </body>
</html>
