<%-- 
    Document   : consult
    Created on : 19-Oct-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page import="org.fao.figis.flod.converter.utils.EML2DWC"%>
<%@page contentType="application/rdf+xml" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
    String metaxml = request.getParameter("meta");
    String output = EML2DWC.getInstance().setMetaXML(metaxml).makeRDF();
%>
<%=output%>