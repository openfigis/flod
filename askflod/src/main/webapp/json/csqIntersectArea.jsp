<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="application/json" pageEncoding="UTF-8" import="
        org.fao.figis.flod.csquare.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String csq = request.getParameter("csq");
            String area = request.getParameter("area");
			String jp = request.getParameter("callback");
			String output = "";
			output = DataServer.csquareIntersectAreaMulti(area,csq);
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>