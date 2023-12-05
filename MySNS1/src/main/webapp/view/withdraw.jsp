

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");

	UserDAO dao = new UserDAO();
	if (!dao.exists(uid)) {
		out.print("회원 정보를 찾을 수 없습니다.");
		return;
	}

	if (dao.delete(uid)) {
		String str = "<p align=center>";
		str += "<br>회원탈퇴가 완료되었습니다.<br>";
		str += "그동안 이용해주셔서 감사드립니다.</p>";

		out.print(str);
		session.removeAttribute("id");
	} else {
		out.print("회원탈퇴 중 오류가 발생하였습니다.");
	}
%>