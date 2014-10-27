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
        <link href="style.css" rel="stylesheet">
        <title>JSP DB</title>
    </head>
    <body>

        <%

            Connection con = new Connection();
            String w = "", s = "", z = "";

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
        <div id="wrapper">
            <div class="header">

                <div id="logo">
                    <img src="logo.png"/>
                </div>
                <jsp:include page="header.jsp" />
                <div class="content">
                    <h1>Team informatie weergeven</h1>
                    <div class="row2">
                        <table>
                            <%= s%> 
                            <%= z%>
                        </table>
                        <%= w%>
                    </div>
                </div>
                <jsp:include page="footer.jsp" />
            </div>
    </body>
</html>
