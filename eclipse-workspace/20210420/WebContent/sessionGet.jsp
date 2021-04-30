<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Integer se_a = (Integer)session.getAttribute("a");
String se_id=(String)session.getAttribute("id");
String se_b=(String)session.getAttribute("b");

out.print("se_a="+se_a);
out.print("id="+se_id);
out.print("se_b="+se_b);
%>

</body>
</html>