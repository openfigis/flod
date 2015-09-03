<%-- 
    Document   : fsa4iso3
    Created on : 06-Oct-2011, 18:59:09
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>
<%@page contentType="application/json" pageEncoding="UTF-8" import="
        org.fao.fi.flod.server.askflod.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
    String jp = request.getParameter("callback");
    String code_uri = request.getParameter("code_uri");
    String ce_var = request.getParameter("ceVar");
    if(ce_var == null ) ce_var = "ce_uri";
    String output = DataServer.ce4code_uri(code_uri, ce_var);
    if (jp != null) {
        output = jp + "({\"response\":\"" + output + "\"})";
    }
%>
<%=output%>
