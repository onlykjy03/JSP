package kb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


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

public ArrayList<BBS> selectBBS() {
	ArrayList<BBS> list = null;
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try {
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://mydb-qkr03210.clbvxqwpuapd.ap-northeast-2.rds.amazonaws.com:3306/jsp_teamproject","jsp_user","asd0123!");
		pstmt=conn.prepareStatement("select * from bbs order by idx desc");
		rs=pstmt.executeQuery();
		list =new ArrayList<BBS>();
		while(rs.next()) {
			BBS bbs = new BBS();
			bbs.setIdx(rs.getString("idx"));
			bbs.setId(rs.getString("id"));
			bbs.setTitle(rs.getString("title"));
			bbs.setText(rs.getString("text"));
			bbs.setDate(rs.getString("date"));
			list.add(bbs);
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

	return list;
	
}

public void bbsWrite(String id, String title, String text) {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try {
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://mydb-qkr03210.clbvxqwpuapd.ap-northeast-2.rds.amazonaws.com:3306/jsp_teamproject","jsp_user","asd0123!");
		pstmt=conn.prepareStatement("INSERT INTO bbs(id,title,text) values(?,?,?)");
		
		pstmt.setString(1,id);
		pstmt.setString(2,title);
		pstmt.setString(3,text);
pstmt.executeUpdate();


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

}

}
