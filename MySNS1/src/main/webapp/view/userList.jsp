

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.*" %>

<%
	out.print(new UserDAO().getList());
%>