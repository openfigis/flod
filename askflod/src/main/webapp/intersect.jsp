<%-- 
    Document   : consult
    Created on : 09-Jun-2011, 15:39:40
    Author     : baldassarrec
--%>

<%@page contentType="text" pageEncoding="UTF-8" import="
        org.fao.figis.flod.csquare.DataServer"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
            String code1 = request.getParameter("a1");
            String code2 = request.getParameter("a2");
			String multi = request.getParameter("multi");
			String jp = request.getParameter("callback");
			String output = "";
			boolean verbouse = false;
    if (multi != null && multi.equals("true")) {
        output = DataServer.intersectMulti(code1, code2, verbouse);
    }
    if (multi == null || multi.equals("false")) {
			output = DataServer.intersect(code1,code2, verbouse);
			}
			if (jp !=null){
			output = jp + "({\"response\":\""+output+"\"})";
			}
%>
<%=output%>