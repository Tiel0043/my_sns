<%@ page import="dao.FriendDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String uid = request.getParameter("id");
  String frid = request.getParameter("frid");
  out.print(new FriendDAO().insert(uid, frid));
%>
