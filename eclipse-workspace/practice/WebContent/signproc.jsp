<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String p_id=(String)request.getParameter("id");
String p_pw=(String)request.getParameter("pw");
String p_name=(String)request.getParameter("name");
String p_phone=(String)request.getParameter("phone");
Connection conn = null;
PreparedStatement ptmt = null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","AI","1234");
	
	ptmt=conn.prepareStatement("INSERT INTO SPRO_MEMBER VALUES (SPROMEMBER.NEXTVAL,?,?,?,?)");
	
			
	ptmt.setString(1,p_id);
	ptmt.setString(2,p_pw);
	ptmt.setString(3,p_name);
	ptmt.setString(4,p_phone);
	
	int ret = ptmt.executeUpdate();
	System.out.println("insert 완료");
	out.println("<a href='index.jsp'>로그인페이지이동</a>");
}
catch (Exception e){
	
	e.printStackTrace();
}
finally{
	try{
		if(ptmt !=null) ptmt.close();
		if(conn !=null) conn.close();
	}
	catch(Exception ex){
		
	}
}
%>