<%@page import="kb.ConnMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String id=(String)request.getParameter("id");
String title=(String)request.getParameter("title");
String text=(String)request.getParameter("text");
System.out.print(text);
System.out.print(id);
System.out.print(title);
ConnMysql mysql = new  ConnMysql();
mysql.bbsWrite(id, title, text);

%>
<body>
	<script type="text/javascript">
	window.onload=function(){
		window.close();
	}
		
	</script>
</body>
</html>