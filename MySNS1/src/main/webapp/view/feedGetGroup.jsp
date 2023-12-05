
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.*" %>
<%
  String frids = request.getParameter("frids");
  String maxNo = request.getParameter("maxNo");
  out.print(new FeedDAO().getGroup(frids, maxNo));
%>