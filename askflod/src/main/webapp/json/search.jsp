<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="application/json" pageEncoding="UTF-8"  import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%! DataServer ds = DataServer.getInstance();%>
<%
            String term = request.getParameter("q");
            String template = request.getParameter("template");
%>
<%=ds.populateTemplate(ds.search(term))%>