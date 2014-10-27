<%-- 
    Document   : wijzigen
    Created on : Aug 30, 2014, 2:41:38 PM
    Author     : jeffrey
--%>
<%@page import="sport.Leden"%>
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
            Leden l = new Leden();
            String code = "", w = "";

            try {
                code = request.getParameter("spelercode");
            } catch (NumberFormatException e) {
                w = "Niet ingevuld";
            }
            String cellen = l.editLid(code);
        %>
        <div class="header">

            <div id="logo">
                <img src="../logo.png"/>
            </div>

            <jsp:include page="../header2.jsp" />
            <div class="content">
                <h1>Speler Wijzigen</h1> 
                <div class="row">

                    <form method="POST" action="updatelid.jsp">
                        <input type="hidden" name="spelercode" value="<%=code%>"/>
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
