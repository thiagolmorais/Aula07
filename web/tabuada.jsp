<%-- 
    Document   : newjsp
    Created on : 12/04/2017, 20:13:48
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuada</title>
    </head>
    <body>
                <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Tabuada</h1>
        <%
            int mult = 1, r = 0;
        %>  
        <%
            String multiplicador = request.getParameter("multiplicador");
        %>
        <form>
            Digite o número para exibir sua tabuada
            <br/>
            <input type="text" name="multiplicador"/>
            <br/>     
        </form>
        <br/>

        <% for (int i = 0; i <= 10; i++) {%>
            <%if (multiplicador != null) {%>
                <%r = Integer.parseInt(multiplicador) * i;%>
                <h2>
                <%=multiplicador%> x <%=i%> = <%=r%>
                </h2>
            <%} else{%>
            <h2>
                <%=mult%> x <%=i%> = <%=r%>
            </h2>    
            <%}%>    
        <%}%>       
        

    </body>
</html>
