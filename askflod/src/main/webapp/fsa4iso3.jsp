<%-- 
    Document   : fsa4iso3
    Created on : 06-Oct-2011, 18:59:09
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>
<%@page contentType="application/xml" pageEncoding="UTF-8" import="
		        org.fao.fi.flod.server.askflod.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String countryCode = request.getParameter("code");
			String deep = request.getParameter("deep");
			String jp = request.getParameter("callback");
			String output = DataServer.fsa4iso3(countryCode, Boolean.parseBoolean(deep));
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>
