<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="application/json" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%! DataServer ds = DataServer.getInstance();%>
<%
            String countryCode = request.getParameter("code");
			String jp = request.getParameter("callback");
			String output = ds.populateForGIS(ds.eez4fs(countryCode));
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>