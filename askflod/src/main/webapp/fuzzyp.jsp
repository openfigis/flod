<%-- 
    Document   : fuzzyp
    Created on : 13-Dec-2011, 18:38:58
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>

<%@page contentType="text/javascript" pageEncoding="UTF-8" import="
        org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%! DataServer ds = DataServer.getInstance();%>
<%
			String jp = request.getParameter("callback");
			String from = request.getParameter("to");
			String to = request.getParameter("from");
                        String type = "http://www.fao.org/figis/flod/onto/port.owl#PortCode";
                        String fromCode = ds.getUriFromCode(from, type);
                        String toCode = ds.getUriFromCode(to, type);
                        String pUri = "http://www.w3.org/2002/07/owl#sameAs";
			String output = ds.update(fromCode, pUri, null, toCode);
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>