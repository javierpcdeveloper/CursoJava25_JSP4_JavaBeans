<%-- 
    Document   : modificarRectangulo
    Created on : Aug 28, 2023, 11:07:24 PM
    Author     : Ja8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="r1" class="beans.Rectangulo" scope="session"/>
        <jsp:useBean id="r2" class="beans.Rectangulo" scope="request"/>
        <h1>Hello World!</h1>
        <%
            int base1=Integer.valueOf(request.getParameter("base1"));
            int altura1=Integer.valueOf(request.getParameter("altura1"));
            int base2=Integer.valueOf(request.getParameter("base2"));
            int altura2=Integer.valueOf(request.getParameter("altura2"));
        %>
        <jsp:setProperty name="r1" property="base" value="<%=base1%>"/>
        <jsp:setProperty name="r1" property="altura" value="<%=altura1%>"/>
        <jsp:setProperty name="r2" property="base" value="<%=base2%>"/>
        <jsp:setProperty name="r2" property="altura" value="<%=altura2%>"/>
        <br>
        Valores actualizados:<br>
        Base de r1:<jsp:getProperty name="r1" property="base"/><br>
        Altura de r1:<jsp:getProperty name="r1" property="altura"/><br>
        Área de r1:<jsp:getProperty name="r1" property="area"/><br>
        Base de r2:<jsp:getProperty name="r2" property="base"/><br>
        Altura de r2:<jsp:getProperty name="r2" property="altura"/><br>
        Área de r2:<jsp:getProperty name="r2" property="area"/><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
