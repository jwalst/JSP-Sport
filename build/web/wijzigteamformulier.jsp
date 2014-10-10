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
    </head>
    <body>
        <%
            Team l = new Team();
            String code ="", w="";
            
            try{
                code = request.getParameter("teamcode");
            }
            catch (NumberFormatException e){
               w="Niet ingevuld"; 
            }
            String cellen= l.editTeam(code);
        %>
        <form method="POST" action="updateteam.jsp">
            <input type="hidden" name="teamcode" value="<%=code %>"/>
            <table>
                <%=cellen %>
            </table>
            <input type="submit" name="wijzigen" value="Wijzigen"> 

        </form>
    </body>
</html>
