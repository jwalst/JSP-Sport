<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>

<footer id="footer">
                <%
                    Date dNow = new Date();
                    SimpleDateFormat ft
                            = new SimpleDateFormat("yyyy");
                %>
                <small>
                    Copyright © 2013-<%out.print( ft.format(dNow));%><br> jeffreywalst.nl
                </small>
            </footer>
