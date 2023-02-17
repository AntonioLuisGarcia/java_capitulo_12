<%-- 
    Document   : index.jsp
    Created on : 16 feb. 2023, 9:15:44
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    </head>
    <body>
        
        <form method="POST" action="mycalendar.jsp">
            
            <h1>Calendario</h1>
            <div class="input-item">
                <label for="month">
                    Elija un mes
                </label>

                <select name="month">
                    <option value="1" <%=isMonth(1)?"selected":""%>>
                        Enero
                    </option>
                    <option value="2" <%=isMonth(2)?"selected":""%>>
                        Febrero
                    </option>
                    <option value="3" <%=isMonth(3)?"selected":""%>>
                        Marzo
                    </option>
                    <option value="4" <%=isMonth(4)?"selected":""%>>
                        Abril
                    </option>
                    <option value="5" <%=isMonth(5)?"selected":""%>>
                        Mayo
                    </option>
                    <option value="6" <%=isMonth(6)?"selected":""%>>
                        Junio
                    </option>
                    <option value="7" <%=isMonth(7)?"selected":""%>>
                        Julio
                    </option>
                    <option value="8" <%=isMonth(8)?"selected":""%>>
                        Agosto
                    </option>
                    <option value="9" <%=isMonth(9)?"selected":""%>>
                        Septiembre
                    </option>
                    <option value="10" <%=isMonth(10)?"selected":""%>>
                        Octubre
                    </option>
                    <option value="11" <%=isMonth(11)?"selected":""%>>
                        Noviembre
                    </option>
                    <option value="12" <%=isMonth(12)?"selected":""%>>
                        Diciembre
                    </option>
                </select>
            </div>
            <div class="input-item">
                <label for="anio">
                    Escriba el año
                </label>
                <input type="number" min="1901" name="anio" value=<%
                    int year = (new Date()).getYear()+1900;
                    out.print(year);
                %> >
            </div>
            
            <input type="submit">
        </form>
    </body>
</html>


<%!
  static boolean isMonth(int month) {
    return ((new Date()).getMonth()+1) == month;
  }
%>