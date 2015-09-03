<%-- 
    Document   : fuzzyp
    Created on : 13-Dec-2011, 18:38:58
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>

<%@page contentType="application/json" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%! DataServer ds = DataServer.getInstance();%>
<%
			String jp = request.getParameter("callback");
			String code = request.getParameter("code");
                        String output = ds.isFlagstate(code);
			if (jp !=null){
			output = jp + "({\"response\":{\"uri\":"+output+"\", \"id\":\""+code+"\"}})";
			}
%>
<%=output%>