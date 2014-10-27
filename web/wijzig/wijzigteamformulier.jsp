<%-- 
    Document   : wijzigT
    Created on : 16-sep-2014, 14:15:55
    Author     : jeffrey
--%>
<%@page import="sport.Team" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB</title>
        <link href="../style.css" rel="stylesheet">
    </head>
    <body>
        <%
            Team l = new Team();
            String code = "", w = "";

            try {
                code = request.getParameter("teamcode");
            } catch (NumberFormatException e) {
                w = "Niet ingevuld";
            }
            String cellen = l.editTeam(code);
        %>
        <div id="wrapper">
            <div class="header">

                <div id="logo">
                    <img src="../logo.png"/>
                </div>

                <jsp:include page="../header2.jsp" />
                <div class="content">
                    <h1>Team wijzigen</h1> 
                    <div class="row">
                        <form method="POST" action="updateteam.jsp">
                            <input type="hidden" name="teamcode" value="<%=code%>"/>
                            <table>
                                <%=cellen%>
                            </table>
                            <input type="submit" name="wijzigen" value="Wijzigen"> 

                        </form>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </div>
    </body>
</html>
