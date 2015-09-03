<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String res = request.getParameter("res");
%>
<%=DataServer.getInstance().describe(res, "feedback")%>