<%-- 
    Document   : index
    Created on : 24-apr-2014, 11:27:18
    Author     : jeffrey
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sport.Team"%>
<%@page import="sport.Teamspelers"%>
<%@page import="sport.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB</title>
    </head>
    <body>
        <h1>Team informatie weergeven</h1>
        <%
            
            Connection con = new Connection();
            String w="", s="", z="";
            
            if (con.getConnError() == null) {
                Teamspelers tm = new Teamspelers(request.getParameter("teamcode"));
                z = tm.getSpelerscode();
                Team t = new Team(request.getParameter("teamcode"));
                s = t.getGegevens();
                w = t.getTeamspelerbutton();
                

            } else {
                s = "Er is <b><u>geen</b></u> verbinding met de Database server";
            }
        %>                       
        <table>
            <%= s%> 
            <%= z%>
        </table>
        <button onclick="location.href = 'index.jsp'">Beginpagina</button>
            <%= w%>
    </body>
</html>
