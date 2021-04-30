<%@page import="practice3.DBmember"%>
<%@page import="practice3.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
String id= request.getParameter("id");
String pw=request.getParameter("pw");

DBconnection Dconn = new DBconnection();
DBmember Dmem= Dconn.LoginCK(id,pw);

if(Dmem!=null){
	out.println("로그인성공");
}
else{
	out.println("로그인실패");
}

%>
</head>
<body>

</body>
</html>