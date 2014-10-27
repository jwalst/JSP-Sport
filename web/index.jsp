<%-- 
    Document   : index
    Created on : 24-apr-2014, 11:27:18
    Author     : jeffrey
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sport.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB</title>
        <link href="style.css" rel="stylesheet">
        <link type="text/css" media="screen" rel="stylesheet" href="responsive-tables.css" />
        <script type="text/javascript" src="responsive-tables.js"></script>
    </head>
    <body>
        <%
            Leden lid = new Leden();
            Team t = new Team();
            Connection con = new Connection();
            String w = "", s = "", z = t.getLijst();
            if (con.getConnError() == null) {
                try {
                    if (request.getParameter("submit") != null) {
                        Leden leden = new Leden(Integer.parseInt(request.getParameter("spelernr")));
                        s = leden.editLijst();
                    } else {
                        s = lid.editLijst();
                    }
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
                    <div class="row">
                        <div class="table-container">
                            <table>
                                <tr>
                                    <th>Spelerscode</th>
                                    <th>Spelersnr</th>
                                    <th>Roepnaam</th>
                                    <th>Tussenvoegsel</th>
                                    <th>Achternaam</th>
                                    <th>Adres</th>
                                    <th>Postcode</th>
                                    <th>Woonplaats</th>
                                    <th>Telefoon</th>
                                    <th>Geboortedatum</th>
                                </tr>
                                <%= s%> 
                            </table>
                            <%= w%>
                        </div>
                        <div class="table-container">
                            <table>
                                <tr>
                                    <th>Teamcode</th>
                                    <th>Teamomschrijving</th>
                                </tr>
                                <%= z%>
                            </table>  
                        </div>
                    </div>
                </div>
                <jsp:include page="./footer.jsp" />
            </div>
    </body>
</html>
