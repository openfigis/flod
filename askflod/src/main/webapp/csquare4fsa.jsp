<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="text" pageEncoding="UTF-8" import="
        org.fao.figis.flod.csquare.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String fsa = request.getParameter("code");
			String jp = request.getParameter("callback");
			String output = DataServer.csquare4fsa(fsa);
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>