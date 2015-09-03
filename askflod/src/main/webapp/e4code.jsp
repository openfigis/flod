<%-- 
    Document   : e4code
    Created on : 13-Dec-2011, 18:38:58
    Author     : Claudio Baldassarre <claudio.baldassarre@fao.org><claudio.baldassarre@email.it>
--%>

<%@page contentType="text/javascript" pageEncoding="UTF-8" import="org.fao.fi.flod.commons.server.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%! DataServer ds = DataServer.getInstance();%>
<%
			String jp = request.getParameter("callback");
			String[] codes = request.getParameterValues("codes[]");
            String type = "http://www.fao.org/figis/flod/onto/port.owl#PortCode";
			
			String resp = "[";
			
			for(String code : codes) 
				resp += "{ URI: \"" + ds.getEntityFromCode(code, type) + "\", ID: " + code + "}, ";
				
			resp = resp.substring(0, resp.length() - 2);
			
			resp += "]";
			
			String output = "";
			
			if (jp !=null) {
				output = jp + "(" + resp + ");";
			}
%>
<%=output%>