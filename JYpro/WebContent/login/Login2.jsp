<%@page import="kb.ConnMysql"%>
<%@page import="kb.Member"%>
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
		session.setAttribute("phone", member.getPhone());}
	else{
		out.println("<script>alert('���̵� Ȥ�� ��й�ȣ�� Ȯ���ϼ���!');history.back();</script>");
	}%>
	<script>location.href='../home.jsp';</script>
</body>
</html>