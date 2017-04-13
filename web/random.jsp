<%-- 
    Document   : random
    Created on : 12/04/2017, 20:13:40
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ramdom</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Random</h1>
        <%
            int rand = 10, r =0;
        %>  
        <%
            String random = request.getParameter("random");
        %>
        <form>
            Digite quantos números você quer exibir em sua tabela.
            <br/>
            <input type="text" name="random"/>
            <br/>     
        </form>
        <%if (random!=null){%>
            <%rand=Integer.parseInt(random);%>
         <%}%> 
        <% for (int i = 0; i <= rand; i++) {%>
        <h2>
            <%=Math.random()*100%>
        </h2>
        <%}%> 
    </body>
</html>
