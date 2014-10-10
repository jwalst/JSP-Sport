<%-- 
    Document   : update
    Created on : 5-sep-2014, 13:20:44
    Author     : jeffrey
--%>
<%@page import="sport.Team" %>
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
            String teamcode = request.getParameter("teamcode");
            String teamomschrijving = request.getParameter("teamomschrijving");
            
            int i = t.Wijzig(teamcode, teamomschrijving);
            if(i == 1){
                response.sendRedirect("index.jsp");
            }
        %>
        
                
    </body>
</html>
