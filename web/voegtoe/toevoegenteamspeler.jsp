<%-- 
    Document   : toevoegenteamspeler
    Created on : Oct 10, 2014, 9:52:09 AM
    Author     : jeffrey
--%>
<%@page import="sport.Teamspelers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Teamspelers t = new Teamspelers();
            String s = "";
            String teamcode = request.getParameter("teamcode");
            String spelerscode = request.getParameter("spelerscode");

            int i =  t.Insert(teamcode, spelerscode);
            if (i == 1) {
                response.sendRedirect("../index.jsp");  
            }
            else{
                s = "Speler bestaat al in dit team!<br>";
                
                
            }
        %>
        <%= s %>
        <button onclick="location.href='index.jsp'">Home</button> 
    </body>
</html>
