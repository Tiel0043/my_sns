
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.*" %>
<%
    String uid = request.getParameter("id");
    out.print(new UserDAO().get(uid));
%>