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
            Leden l = new Leden();
            String code ="", w="";
            
            try{
                code = request.getParameter("spelercode");
            }
            catch (NumberFormatException e){
               w="Niet ingevuld"; 
            }
            String cellen= l.editLid(code);
        %>
        <form method="POST" action="updatelid.jsp">
            <input type="hidden" name="spelercode" value="<%=code %>"/>
            <table>
                <%=cellen %>
            </table>
            <input type="submit" name="wijzigen" value="Wijzigen"> 

        </form>
    </body>
</html>
