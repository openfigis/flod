<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8"  import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String term = request.getParameter("q");
            String template = request.getParameter("template");
%>
<%=DataServer.getInstance().fuzzy(term)%>