<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="modelos.Mazo" %>
<%@ page import="modelos.Mano" %>
<%@ page import="modelos.CartaTemplate" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/styles.css" type="text/css">
    </head>
<body>
    <%
        
        int iniciado = Integer.parseInt(request.getParameter("iniciado"));
        Mazo mazo = null;
        Mano manoJugador = null;
        Mano manoMaquina =null;
        if(iniciado==0){
            mazo = new Mazo(40);
            session.setAttribute("mazo", mazo);
            manoJugador = new Mano();
            manoJugador.add(mazo.extrae());
            manoJugador.add(mazo.extrae());
            manoJugador.add(mazo.extrae());
            manoMaquina = new Mano();
            manoMaquina.add(mazo.extrae());
            manoMaquina.add(mazo.extrae());
            manoMaquina.add(mazo.extrae());
        }
        else{
            mazo = (Mazo) session.getAttribute("mazo");
        }
        
    %>
    <div class="cartas">
        <%
           

            do{
                out.print(manoJugador);

            }while();

            out.print(manoJugador);


            out.print(new CartaTemplate(mazo.extrae()));
            out.print(new CartaTemplate(mazo.extrae()));
        %>
    </div>
    
</body>
</html>