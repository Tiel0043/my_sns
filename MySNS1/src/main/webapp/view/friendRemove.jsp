<%@ page import="dao.FriendDAO" %><%--
  Created by IntelliJ IDEA.
  User: Seungsu
  Date: 2022-10-21
  Time: 오후 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String uid = request.getParameter("id");
  String frid = request.getParameter("frid");
  out.print(new FriendDAO().remove(uid, frid));
%>