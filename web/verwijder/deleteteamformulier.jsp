<%-- 
    Document   : DeleteT
    Created on : 16-sep-2014, 14:06:57
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
            String s = "", w = "", code = "";

            try {
                Team t = new Team(request.getParameter("teamcode"));
                s = t.getGegevens();
                code = request.getParameter("teamcode");
            } catch (NumberFormatException e) {
                w = "Niet ingevuld";
            }

        %>
        <div id="wrapper">
            <div class="header">

                <div id="logo">
                    <img src="../logo.png"/>
                </div>

                <jsp:include page="../header2.jsp" />
                <div class="content">
                    <h3>Weet u zeker dat u dit Team wilt verwijderen</h3>
                    <div class="row">

                        <form method="POST" action="verwijderenteam.jsp">
                            <input type="hidden" name="teamcode" value="<%=code%>"/>
                            <table>
                                <%=s%>
                            </table>
                            <input type="submit" name="delete" value="Verwijder"> 

                        </form>
                    </div>
                </div>
                <jsp:include page="../footer.jsp" />
            </div>
    </body>
</html>
