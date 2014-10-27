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
                    <h1>Voeg een team toe</h1>
                    <div class="row">

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
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </div>
    </body>
</html>
