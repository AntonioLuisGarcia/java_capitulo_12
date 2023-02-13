<%-- 
    Document   : media
    Created on : 13 feb 2023, 16:55:08
    Author     : Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
      double n1 = Double.valueOf(request.getParameter("nota1"));
      double n2 = Double.valueOf(request.getParameter("nota2"));
      double n3 = Double.valueOf(request.getParameter("nota3"));
      double media = (n1 + n2 +n3) / 3;
      out.println("La media es " + media);
    %>
    </body>
</html>
