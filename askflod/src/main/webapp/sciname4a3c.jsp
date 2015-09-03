<%-- 
    Document   : fsa4iso3
    Created on : 06-Oct-2011, 18:59:09
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>
<%@page contentType="application/xml" pageEncoding="UTF-8" import="
		        org.fao.fi.flod.server.askflod.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String a3c = request.getParameter("code");
			String jp = request.getParameter("callback");
			String output = DataServer.sciName4a3c(a3c);
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>
