<%@page import="spro.com.org.SPRO_DBManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
SPRO_DBManager sdbm = new SPRO_DBManager();
String suValue= "";
request.setCharacterEncoding("utf-8");
/* out.println(123);
out.println("<p>문단</p>");

for(int i =0; i<10; i++){
	out.println("i="+i);
} */

//id의 값을 가져옴
out.println("<br>");
String p_id = (String)request.getParameter("id");
//out.println("a="+a);
String p_pw = (String)request.getParameter("pw");
String p_name = (String)request.getParameter("name");
String p_phone = (String)request.getParameter("phone");

int ret=sdbm.signInsert(p_id,p_pw,p_name,p_phone);
out.println("ret="+ret);
suValue="<a class='btn btn-primary' href='index.jsp'>로그인페이지이동</a>";


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron">

<h1>회원가입 완료</h1>
<p>Thank you</p>
<% out.print(suValue); %>
</div>
</body>
</html>

