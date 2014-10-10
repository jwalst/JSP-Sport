<%-- 
    Document   : index
    Created on : 24-apr-2014, 11:27:18
    Author     : jeffrey
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sport.Leden"%>
<%@page import="sport.Lid"%>
<%@page import="sport.Teamspelers"%>
<%@page import="sport.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB</title>
    </head>
    <body>
        <h1>Persoonlijke informatie weergeven</h1>
        <%
            Leden lid = new Leden();
            Lid l = new Lid();
            Teamspelers tm = new Teamspelers(request.getParameter("spelercode"),"");
            Connection con = new Connection();
            String w="", s="", t= l.getSpelerscode(), u= tm.getTeamcode();
            if (con.getConnError() == null) {
                try {
                        Leden leden = new Leden(request.getParameter("spelercode"));
                        s = leden.getGegevens();
                    
                } catch (NumberFormatException e) {
                    w= "Geen nummer ingevoerd";
                }

            } else {
                s = "Er is <b><u>geen</b></u> verbinding met de Database server";
            }
        %>                       
        <table>
            <%= s%>
            <%= u%>
        </table>
            <%= w%>
        <button onclick="location.href = 'index.jsp'">Beginpagina</button>
    </body>
</html>
