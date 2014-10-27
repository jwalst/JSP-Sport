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
        <link href="style.css" rel="stylesheet">
    </head>
    <body>

        <%
            Leden lid = new Leden();
            Lid l = new Lid();
            Teamspelers tm = new Teamspelers(request.getParameter("spelercode"), "");
            Connection con = new Connection();
            String w = "", s = "", t = l.getSpelerscode(), u = tm.getTeamcode();
            if (con.getConnError() == null) {
                try {
                    Leden leden = new Leden(request.getParameter("spelercode"));
                    s = leden.getGegevens();

                } catch (NumberFormatException e) {
                    w = "Geen nummer ingevoerd";
                }

            } else {
                s = "Er is <b><u>geen</b></u> verbinding met de Database server";
            }
        %>                       
        <div id="wrapper">
            <div class="header">

                <div id="logo">
                    <img src="logo.png"/>
                </div>
                <jsp:include page="header.jsp" />
                <div class="content">
                    <h1>Persoonlijke informatie weergeven</h1>
                    <div class="row2">
                        <table>
                            <%= s%>
                            <%= u%>
                        </table>
                        <%= w%>
                    </div>
                </div>
                <jsp:include page="footer.jsp" />    
            </div>
    </body>
</html>
