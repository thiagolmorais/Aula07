<%-- 
    Document   : tabela
    Created on : 12/04/2017, 19:58:55
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Condicional</title>
    </head>
    <body>

        <h1>Tabela</h1>
        <table border="1">
            <%
              int lins = 100, cols = 9;  
            %>  
              <tr>
                <%for(int col=1; col<=cols; col++){%>
                <th>Coluna<%=col%></th>
                <%}%>
            </tr>
        <% for(int lin=1; lin<=lins; lin++){%>
          <tr>
                <%for(int col=1; col<=cols; col++){%>
                <th><%=lin%>, <%=col%></th>
                <%}%>
            </tr>
        <%}%>    
    </body>
</html>
