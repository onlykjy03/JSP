<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="practice2.login2" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String id=request.getParameter("id");
String pw=request.getParameter("pw");

login2 lo= new login2();
int ret = lo.loginCK(id,pw);
if(ret==0){
	out.println("로그인성공");
}else{
	out.println("로그인실패");
}
%>
</body>
</html>