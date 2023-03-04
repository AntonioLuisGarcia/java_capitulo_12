<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="modelos.Mazo" %>
<%@ page import="modelos.Carta" %>
<%@ page import="modelos.CartaTemplate" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/styles.css" type="text/css">
        <link  rel="icon"   href="./assets/img/favicon-32x32.png" type="image/png" />
    </head>
<body>
    <%
        Mazo mazo = (Mazo) session.getAttribute("mazo");
        ArrayList<Carta> cartas = (ArrayList<Carta>) session.getAttribute("mano");
        int dinero = Integer.parseInt(request.getParameter("dinero"));

        if(mazo == null){
            mazo = new Mazo(40);
            cartas = new ArrayList<Carta>();
        }
    %>
    <div class="cartas">
        <%

            float suma = 0;    
            float sumaMaquina = 0;
            boolean turno = true;
            String puntosMaquina = "";
            String puntos = "";

            if(request.getParameter("turno") == null){
                turno = true;
            }else{
                turno = false;
            }

            if(turno){
                cartas.add(mazo.extrae());

                for(int i = 0 ; i < cartas.size() ; i++){

                    out.print(new CartaTemplate(cartas.get(i)));

                    if(cartas.get(i).esMenor(8)){
                        if(cartas.get(i).getNumeroAsInt()==0){
                            suma += (float) 1/2;
                        }else{
                            suma += cartas.get(i).getNumeroAsInt();
                        }
                    }else{
                        suma += (float)1/2;
                    }
                }

                if((suma - ((int)suma)) > 0){
                    puntos = ((int)suma) + " y media";
                }else{
                    puntos = ((int)suma) + "";
                }
            }else{

                ArrayList<Carta> cartasMaquina = new ArrayList<>();
                suma = Float.parseFloat(request.getParameter("suma"));
                puntos = request.getParameter("puntos");
                    
                    for(int i = 0 ; sumaMaquina < suma ; i++){
                        cartasMaquina.add(mazo.extrae());

                        out.print(new CartaTemplate(cartasMaquina.get(i)));

                        if(cartasMaquina.get(i).esMenor(8)){
                            if(cartasMaquina.get(i).getNumeroAsInt()==0){
                                sumaMaquina += (float) 1/2;
                            }else{
                                sumaMaquina += cartasMaquina.get(i).getNumeroAsInt();
                            }
                        }else{
                            sumaMaquina += (float)1/2;
                        }
                    }

                    if((sumaMaquina - ((int)sumaMaquina)) > 0){
                        puntosMaquina = ((int)sumaMaquina) + " y media";
                    }else{
                        puntosMaquina = ((int)sumaMaquina) + "";
                    }%>

            </div>
                   <% 
                    
                    if(sumaMaquina < 8){
                        if(sumaMaquina == suma){%>
                            <p class="datos">Tienes los mismos puntos que la maquina</p>
                            <p class="datos">Saldo: <%=dinero%></p>

                            <div class="formularios">
                                <form method="post" action="juego1.jsp">
                                    <input type="hidden" name="dinero" value="<%= dinero%>">
                                    <input type="submit" value="Sigo jugando">
                                </form>
                                <form method="post" action="index.jsp">
                                    <input type="submit" value="Inicio">
                                </form> 
                            </div>

                        <%}else{
                            dinero = 0;%>
                            <p class="datos">Tienes menos puntos que la maquina</p>
                            <p class="datos">Saldo: <%=dinero%></p>

                            <div class="formularios">
                                <form method="post" action="index.jsp">
                                    <input type="submit" value="Inicio">
                                </form> 
                            </div>
                        <%}
                    }else{
                        dinero *=2;%>
                        <p class="datos">Has ganado</p>
                        <p class="datos">Saldo: <%=dinero%></p>

                        <div class="formularios">
                            <form method="post" action="juego1.jsp">
                                <input type="hidden" name="dinero" value="<%= dinero%>">
                                <input type="submit" value="Sigo jugando">
                            </form>
                            <form method="post" action="index.jsp">
                                <input type="submit" value="Inicio">
                            </form> 
                        </div>
                    <%}
            }%>        

                    <%if(suma < 8 && turno){
                        session.setAttribute("mazo",mazo);
                        session.setAttribute("mano",cartas);
                        session.setAttribute("dinero",dinero);%>

                        <div class="formularios">
                            <form method="post" action="juego1.jsp">
                                <input type="hidden" name="dinero" value="<%= dinero%>">
                                <input type="submit" value="Sigo jugando">
                            </form>

                            <form method="post" action="juego1.jsp">
                                <input type="hidden" name="suma" value="<%= suma%>">
                                <input type="hidden" name="puntos" value="<%= puntos%>">
                                <input type="hidden" name="dinero" value="<%= dinero%>">
                                <input type="hidden" name="turno" value="1">
                                <input type="submit" value="Me planto">
                            </form> 
                        </div>

                        <%}else if(suma > 7.5){
                            session.removeAttribute("mazo");
                            session.removeAttribute("mano");%>
                            <p class="datos">Te has pasado de 7 y media</p>
                            <p class="datos">Has perdido todo el dinero</p>
                            <div class="formularios">
                                <form method="post" action="index.jsp">
                                    <input type="submit" value="Inicio">
                                </form> 
                            </div>
                        <%}else{
                            session.removeAttribute("mazo");
                            session.removeAttribute("mano");%>
                        <%}
                        
                        
        if(!turno){%>
            <h3 style="text-align: center;"><%out.print("La maquina tiene: " + puntosMaquina);%></h3>
    <%}%>
    <h3 style="text-align: center;">Tus puntos: <%out.print(puntos);%></h3>

</body>
</html>