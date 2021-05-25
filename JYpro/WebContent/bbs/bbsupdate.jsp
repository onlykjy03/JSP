<%@page import="kb.ConnMysql"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String id=(String)request.getParameter("id");
String title=(String)request.getParameter("title");
String text=(String)request.getParameter("text");
String idx=(String)request.getParameter("idx");


ConnMysql mysql = new  ConnMysql();
mysql.bbsUpdate(id, title, text, idx);

%>
<body>
<script type="text/javascript">
	window.onload=function(){
		location.href='bbs.jsp';
	}
	</script>
</body>
</html>