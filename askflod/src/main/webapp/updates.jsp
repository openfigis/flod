<%-- 
    Document   : update
    Created on : 09-Jun-2011, 15:44:27
    Author     : baldassarrec
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%! DataServer ds = DataServer.getInstance();%>
<%
    String res = request.getParameter("res");
    String jp = request.getParameter("callback");
    String output = ds.describe(res, "update");
    if (jp != null) {
        output = jp + "({\"response\":\"" + output + "\"})";
    }
%>
<%=output%>