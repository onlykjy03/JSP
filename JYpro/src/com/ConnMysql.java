package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ConnMysql {
	
public Member ckLogin(String id, String pwd) {
	
	Member member = null;
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try {
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://mydb-qkr03210.clbvxqwpuapd.ap-northeast-2.rds.amazonaws.com:3306/jsp_teamproject","jsp_user","asd0123!");
		pstmt=conn.prepareStatement("SELECT * FROM member WHERE ID=? AND PWD=?");
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			member = new Member();
			member.setId(id);
			member.setPwd(pwd);
			member.setName(rs.getString("name"));
			member.setPhone(rs.getString("phone"));
		}
		
	}catch(Exception e){
		e.printStackTrace();

	}
	finally {
		try {
			if(pstmt !=null) pstmt.close();
			if(conn !=null) conn.close();
			if(rs != null) rs.close();
		}catch(Exception ex) {
			
		}
	}
	return member;
	
}
}
