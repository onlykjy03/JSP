package spro.com.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SPRO_DBManager {
	String ora_class="oracle.jdbc.driver.OracleDriver";
	String mysql_class="com.mysql.cj.jdbc.Driver";
	String ora_url="jdbc:oracle:thin:@localhost:1521:xe";
	String mysql_url="jdbc:mysql://localhost:3306/spro?useUnicode=true&characterEncoding=UTF-8";
	String mysql_id="root";
	String mysql_pw="1234";
	
public SPRO_MEMBER ckLogin(String id, String pw) {
	
	SPRO_MEMBER member = null;
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try {
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/spro","root","1234");
		pstmt=conn.prepareStatement("SELECT * FROM MEMBER WHERE ID=? AND PW=?");
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			member = new SPRO_MEMBER();
			member.setId(id);
			member.setPw(pw);
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


public int signInsert(String id, String pw, String name, String phone) {
	Connection conn=null;
	PreparedStatement pstmt=null;
	try{
		Class.forName(mysql_class);
		
		conn=DriverManager.getConnection(
				mysql_url,mysql_id,mysql_pw);
		pstmt = conn.prepareStatement("INSERT INTO "+
				"MEMBER (id,pw,name,phone) VALUES "+
				"(?,?,?,?)");
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		pstmt.setString(3,name);
		pstmt.setString(4,phone);
		//crtl shift x 대문자 변환
		//crtl shift y 소문자 변환
		
		int ret = pstmt.executeUpdate();
		if(ret >0){
			System.out.println("insert 완료");
			return ret;
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		try{
			if(pstmt !=null) pstmt.close();
			if(conn !=null) conn.close();
		}catch(Exception ex){
			
		}
	}
	
	return 0;
	
	
}



public int seat_useInsert(String seat,String name,String phone,String m_time){
	Connection conn=null;
	PreparedStatement pstmt=null;
	try{
	Class.forName(mysql_class);
	
	conn=DriverManager.getConnection(
			mysql_url,mysql_id,mysql_pw);
	pstmt = conn.prepareStatement("INSERT INTO "+
			"SEAT_USE (num,name,phone,m_time) VALUES "+
			"(?,?,?,?)");
	pstmt.setString(1,seat);
	pstmt.setString(2, name);
	pstmt.setString(3,phone);
	pstmt.setString(4,m_time);
	//crtl shift x 대문자 변환
	//crtl shift y 소문자 변환
	
	int ret = pstmt.executeUpdate();
	if(ret >0){
		System.out.println("insert 완료");
		return ret;
	}
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	try{
		if(pstmt !=null) pstmt.close();
		if(conn !=null) conn.close();
	}catch(Exception ex){
		
	}
}
return 0;
}


}
