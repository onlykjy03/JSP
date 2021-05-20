<%@page import="com.ConnMysql"%>
<%@page import="com.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");

	ConnMysql mysql=new ConnMysql();
	Member member=new Member();
	member=mysql.ckLogin(id,pwd);

	if(member!=null){
		session.setAttribute("id", id);
		session.setAttribute("pwd", pwd);
		session.setAttribute("name", member.getName());
		session.setAttribute("phone", member.getPhone());}%>
	<script>location.href='login.jsp';</script>
</body>
</html>