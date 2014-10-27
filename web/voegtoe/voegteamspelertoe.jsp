<%-- 
    Document   : voegteamspelertoe
    Created on : Oct 10, 2014, 9:45:31 AM
    Author     : jeffrey
--%>
<%@page import="sport.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Teamspelers tm = new Teamspelers();
    Leden l = new Leden();
    String code = "", s = "", z = "";
    code = request.getParameter("teamcode");
    s = tm.editTeamspeler(code);
    z = l.getSelect();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../style.css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <div class="header">

                <div id="logo">
                    <img src="../logo.png"/>
                </div>

                <jsp:include page="../header2.jsp" />
                <div class="content">
                    <h1>Voeg een speler aan een team toe</h1>
                    <div class="row">

                        <form method="GET" action="toevoegenteamspeler.jsp">
                            <input type="hidden" name="teamcode" value="<%=code%>"/>
                            <table>
                                <%= s%>
                                <tr>
                                    <td>Naam van Team *</td>
                                    <td><select name="spelerscode"><%= z%></select></td>
                                </tr>

                            </table>
                            <input type="submit" name="voegtoe" value="Toevoegen"> 

                        </form>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </div>
    </body>
</html>
