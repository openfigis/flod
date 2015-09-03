<%-- 
    Document   : feedback
    Created on : 09-Jun-2011, 15:43:56
    Author     : baldassarrec
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%
            String res = request.getParameter("res");
            String comment = request.getParameter("comment");
%>
<%DataServer.getInstance().feedback(res, comment);%>