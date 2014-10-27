<%-- 
    Document   : update
    Created on : 5-sep-2014, 13:20:44
    Author     : jeffrey
--%>
<%@page import="sport.Leden" %>
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
            
            
            String spelercode = request.getParameter("spelercode");
            String spelernr = request.getParameter("spelernr");
            String roepnaam = request.getParameter("roepnaam");
            String tussenvoegsel = request.getParameter("tussenvoegsel");
            String achternaam = request.getParameter("achternaam");
            String adres = request.getParameter("adres");
            String postcode = request.getParameter("postcode");
            String woonplaats = request.getParameter("woonplaats");
            String telefoon = request.getParameter("telefoon");
            String geboortedatum = request.getParameter("geboortedatum");
            
            int i = l.Insert(spelercode,Integer.parseInt(spelernr), roepnaam, tussenvoegsel, achternaam, adres, postcode, woonplaats, telefoon, geboortedatum);
            
            if(i == 1){
                response.sendRedirect("../index.jsp");
            }
            
        %>
        
                
    </body>
</html>
