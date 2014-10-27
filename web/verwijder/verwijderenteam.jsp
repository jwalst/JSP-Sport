<%-- 
    Document   : verwijderenT
    Created on : 16-sep-2014, 14:12:41
    Author     : jeffrey
--%>
<%@page import="sport.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB</title>
    </head>
    <body>
        <%
            Team t = new Team();
            Teamspelers tm = new Teamspelers();
            String teamcode = request.getParameter("teamcode");
            
            int y = tm.Deleteteam(teamcode);
            int i = t.Delete(teamcode);
            
            if(y == 1 && i == 1){
                response.sendRedirect("../index.jsp");
            }
        %>
    </body>
</html>
