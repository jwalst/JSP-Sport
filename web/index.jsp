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
        <table border='1px'>
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
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <%= s%> 

        </table>
        <button onclick="location.href = 'voeglidtoe.jsp'">Voeg speler toe</button>
        <%= w%>
        <p>
        <table border="1px">
            <tr>
                <th>Teamcode</th>
                <th>Teamomschrijving</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <%= z%>
        </table>  
        
        <button onclick="location.href = 'voegteamtoe.jsp'">Voeg Team toe</button>
    </body>
</html>
