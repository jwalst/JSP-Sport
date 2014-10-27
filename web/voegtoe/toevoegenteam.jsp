<%-- 
    Document   : toevoegenT
    Created on : 16-sep-2014, 13:56:34
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
            String s = "";
            String teamcode = request.getParameter("teamcode");
            String teamomschrijving = request.getParameter("teamomschrijving");

            int i =  t.Insert(teamcode, teamomschrijving);
            if (i == 1) {
                response.sendRedirect("../index.jsp");  
            }
            else{
                s = "Waarden kloppen niet. Probeer het opnieuw";
                
            }
        %>
        <%= s %>
        <button onclick="location.href='voegteamspelertoe.jsp'">Terug</button>        
    </body>
</html>
