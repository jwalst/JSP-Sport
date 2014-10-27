<%-- 
    Document   : index
    Created on : 24-apr-2014, 11:27:18
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
                <h1>Speler Toevoegen</h1> 
                <div class="row">

                    <form method="POST" action="toevoegenlid.jsp">
                        <table>
                            <tr>
                                <td>Spelerscode *</td>
                                <td><input type="text" name="spelercode" required></td>
                            </tr>
                            <tr>
                                <td>Spelersnummer *</td>
                                <td><input type="number" name="spelernr" required></td>
                            </tr>
                            <tr>
                                <td>Roepnaam *</td>
                                <td><input type="text" name="roepnaam" required></td>
                            </tr>
                            <tr>
                                <td>Tussenvoegsel</td>
                                <td><input type="text" name="tussenvoegsel" ></td>
                            </tr>
                            <tr>
                                <td>Achternaam *</td>
                                <td><input type="text" name="achternaam" required></td>
                            </tr>
                            <tr>
                                <td>Adres *</td>
                                <td><input type="text" name="adres" required></td>
                            </tr>
                            <tr>
                                <td>Postcode *</td>
                                <td><input type="text" name="postcode" required></td>
                            </tr>
                            <tr>
                                <td>Woonplaats</td>
                                <td><input type="text" name="woonplaats"></td>
                            </tr>
                            <tr>
                                <td>Telefoon</td>
                                <td><input type="tel" name="telefoon"></td>
                            </tr>
                            <tr>
                                <td>Geboortedatum *</td>
                                <td><input type="date" name="geboortedatum" required></td>
                            </tr>
                        </table>
                        <input type="submit" name="voegtoe" value="Toevoegen"> 

                    </form>
                    <br>* = Moet ingevuld worden
                </div>
            </div>
            <jsp:include page="../footer.jsp" />
        </div>
    </body>
</html>