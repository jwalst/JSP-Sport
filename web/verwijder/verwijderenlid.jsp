<%-- 
    Document   : update
    Created on : 5-sep-2014, 13:20:44
    Author     : jeffrey
--%>
<%@page import="sport.*" %>
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
            Teamspelers tm = new Teamspelers();
            String spelercode = request.getParameter("spelercode");
           
            int t = tm.Deletespeler(spelercode);
            int i = l.Delete(spelercode);
            
            
            if(t == 1 && i == 1){
                
                response.sendRedirect("../index.jsp");
            }
        %>
        
                
    </body>
</html>
