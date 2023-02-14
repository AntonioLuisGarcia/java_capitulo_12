<%-- 
    Document   : genera_calendario
    Created on : 14 feb 2023, 13:12:06
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
        <% String mes = request.getParameter("mes"); 
            int ano = Integer.parseInt(request.getParameter("ano"));
            String texto = request.getParameter("texto");%>
        
        <h1>Calendario de <%out.print(mes + " de " + ano);%></h1>
        <h3><%out.print(texto);%></h3>
        
        <%
            
            String dia1 = request.getParameter("dia1");
            int numdias  = Integer.parseInt(request.getParameter("numdias"));
            
            String[][] calendario = new String[6][7];
            calendario[0][0]= "Lunes";
            calendario[0][1]= "Martes";
            calendario[0][2]= "Miercoles";
            calendario[0][3]= "Jueves";
            calendario[0][4]= "Viernes";
            calendario[0][5]= "Sabado";
            calendario[0][6]= "Domingo";
            
            Integer contadordias = 1;
            boolean dias = false;
            boolean salir = false;
            
            for(int i = 1 ; i < 6 ; i++){
                for(int j = 0 ; j < 7 ; j++){
                    if(dias || calendario[0][j].equals(dia1)){
                        if(!salir){
                            calendario[i][j] = contadordias.toString() + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
                            contadordias++;
                            if(contadordias == numdias){
                                salir = true;
                            }
                                dias = true;
                    }else{
                        calendario[i][j] = "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
                    }
                    }else{
                        calendario[i][j] = "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
                    }
                }
            }
            
            for(int i = 0 ; i < 6 ; i++){
                for(int j = 0 ; j < 7 ; j++){
                    out.print(calendario[i][j] + " ");
                }
                out.print("<br>");
            }
        %>
    </body>
</html>
