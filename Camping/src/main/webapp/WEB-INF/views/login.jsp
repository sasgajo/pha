meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.sql.*, javax.sql.*, java.net.*, java.io.*" %>
<%@ page session="true" %>
<html>
<head>
<%
	String jump = request.getParameter("jump");
%>
<title>로그인</title>
</head>
<body>
	<h2> 관리자 로그인 </h2>
<form method="post" action="loginchk.jsp">
<table border=1>
  <tr>
    <td>아이디</td>
    <td><input type="text" name="id"></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="password" name="passwd"></td>
  </tr>
  <tr>
    <td colspan=2 align=center><input type="submit" value="전송"></td>
  </tr>
</table>
<input type="hidden" name="jump" value='<%=jump%>'>
</form>
</body>
</html>