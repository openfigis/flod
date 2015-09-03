<%-- 
    Document   : fsa4iso3
    Created on : 06-Oct-2011, 18:59:09
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>
<%@page contentType="application/json" pageEncoding="UTF-8" import="
        org.fao.fi.flod.server.askflod.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
    String a3c = request.getParameter("code");
    String jp = request.getParameter("callback");
    String name_asfis = request.getParameter("asfis_name");
    String scname_asfis = request.getParameter("asfis_scname");
    String name_worms = request.getParameter("worms_scname");
    String asfis_var = request.getParameter("asfis_var");
    String figis_var = request.getParameter("figis_var");
    String figis_code_var = request.getParameter("figis_code_var");
    String worms_var = request.getParameter("aphia_var");
    if (name_asfis == null) {
        name_asfis = "asfis_name";
    }
    if (scname_asfis == null) {
        scname_asfis = "asfis_scname";
    }
    if (name_worms == null) {
        name_worms = "worms_scname";
    }
    if (asfis_var == null) {
        asfis_var = "asfis_uri";
    }
    if (worms_var == null) {
        worms_var = "worms_lsid";
    }
    if (figis_var == null) {
        figis_var = "figis_uri";
    }
    if (figis_code_var == null) {
        figis_code_var = "figis_id";
    }
    String output = DataServer.ce4a3c(a3c, scname_asfis, name_asfis, name_worms, asfis_var, worms_var, figis_var, figis_code_var);
    if (jp != null) {
        output = jp + "({\"response\":\"" + output + "\"})";
    }
%>
<%=output%>
