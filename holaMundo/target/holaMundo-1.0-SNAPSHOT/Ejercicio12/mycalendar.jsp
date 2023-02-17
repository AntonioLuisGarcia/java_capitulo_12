<%-- 
    Document   : mycalendar.jsp
    Created on : 16 feb. 2023, 9:34:48
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./assets/css/styles.css">
        <title>Ejercicio 12</title>
    </head>
    <body>
        <%
            
                String[] months = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Ciciembre"};
                int month = Integer.valueOf(request.getParameter("month"));
                int anio = Integer.valueOf(request.getParameter("anio"));
                Calendar cal = Calendar.getInstance();
                cal.set(anio, month-1, 1);
                int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
                if(dayOfWeek==1)
                    dayOfWeek = 7;
                else
                    dayOfWeek--;
                int actualDay = 1;
                int maxDayOfMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
      
        %>
        <div class="calendar">
            <h1><%out.print(months[month-1]+" de "+anio);%></h1>

            <table border="1">
                <thead>
                    <tr>
                        <th>
                            Lunes
                        </th>
                        <th>
                            Martes
                        </th>
                        <th>
                            Miércoles
                        </th>
                        <th>
                            Jueves
                        </th>
                        <th>
                            Viernes
                        </th>
                        <th>
                            Sábado
                        </th>
                        <th>
                            Domingo
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%for(int cont=1; cont<dayOfWeek;cont++){%> 
                        <td></td>
                        <%}%>
                        <%for(int cont=dayOfWeek; cont <=7; cont++){%>
                        <td><%out.print(actualDay++);%></td>
                        <%}%>
                    </tr>
                    <%
                    int weeks = (int)Math.ceil((double)(maxDayOfMonth-actualDay + 1) / 7);
                    for(int cont=1; cont <= weeks; cont++){
                      out.println("<tr>");
                      for(int dia=1; dia <= 7; dia++){
                        if(actualDay<=maxDayOfMonth) 
                            out.println("<td>"+(actualDay++)+"</td>");
                        else
                            out.println("<td></td>");
                      }
                      out.println("</tr>");
                    }

                    %>
                </tbody> 
            </table>
        </div>
        
    </body>
</html>
