<%-- 
    Document   : voegtoeT
    Created on : 16-sep-2014, 13:53:45
    Author     : jeffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP DB</title>
    </head>
    <body>
        <h1>Voeg een team toe</h1>
        <form method="POST" action="toevoegenteam.jsp">
            <table>
                <tr>
                    <td>Teamcode *</td>
                    <td><input type="text" name="teamcode" required></td>
                </tr>
                <tr>
                    <td>Naam van Team *</td>
                    <td><input type="text" name="teamomschrijving" required></td>
                </tr>
                
            </table>
            <input type="submit" name="voegtoe" value="Toevoegen"> 

        </form>
    </body>
</html>
