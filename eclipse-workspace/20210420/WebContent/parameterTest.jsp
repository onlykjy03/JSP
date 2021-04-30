<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="parameterProc.jsp">
a=<input type="text" value="A" name="a"/>
b=<input type="text" value="B" name="b"/>
<input type="submit" value="확인"/>
</form>

<a href="parameterProc.jsp?a=10">A값 전달</a>


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