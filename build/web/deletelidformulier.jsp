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
    </head>
    <body>
        <%
            String s ="", w="",code="";
            
            try{
                Leden l = new Leden(request.getParameter("spelercode"));
                s= l.getGegevens();
                code = request.getParameter("spelercode");
            }
            catch (NumberFormatException e){
                w="Niet ingevuld"; 
            }
            
        %>
        <h3>Weet u zeker dat u dit lid wilt verwijderen</h3>
        
        <form method="POST" action="verwijderenlid.jsp">
            <input type="hidden" name="spelercode" value="<%=code %>"/>
            <table>
                <%=s %>
            </table>
            <input type="submit" name="delete" value="Verwijder"> 

        </form>
            <button onclick="location.href='index.jsp'">Terug</button>
    </body>
</html>
