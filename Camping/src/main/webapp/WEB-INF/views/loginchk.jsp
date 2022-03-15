<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.sql.*, javax.sql.*, java.net.*, java.io.*" %>
<%@ page session="true" %>
<!-- 세션 사용 : 특별한 경우가 아니면 굳이 사용할 필요가 없음, 기본값이 true -->
<html>
<head>
<%
request.setCharacterEncoding("utf-8");
String jump = request.getParameter("jump");
String id = request.getParameter("id");
String pass = request.getParameter("passwd");

boolean bPassChk = false;

// 아이디, 패스워드 체크
if (id.replaceAll(" ","").equals("admin") && pass.replaceAll(" ","").equals("admin")) {
  bPassChk = true;
} else {
  bPassChk = false;
}

// 패스워드 체크가 끝나면, 세션을 기록하고 점프
if (bPassChk) {
  session.setAttribute("login_ok", "yes");
  session.setAttribute("login_id", id);
  response.sendRedirect(jump);  // 로그인 체크 이후 돌아갈 곳
} else {
  out.println("<h2> 아이디 또는 패스워드 오류 </h2>");
  out.println("<input type=button value='로그인' OnClick=\"location.href='login.jsp?jump="+jump+"'\">");
}
%>
<title>로그인 체크</title>
</head>
<body>
</body>
</html>