<%-- 
    Document   : update
    Created on : 09-Jun-2011, 15:44:27
    Author     : baldassarrec
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String contributor = request.getParameter("contributor");
            String update = request.getParameter("up");
            String res = request.getParameter("res");
            String puri = request.getParameter("puri");
            
%>
<%DataServer.getInstance().update(res, puri, contributor, update);%>