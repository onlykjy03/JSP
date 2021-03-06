import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBa {

	String ora_class="oracle.jdbc.driver.OracleDriver";
	String mysql_class="com.mysql.cj.jdbc.Driver";
	String ora_url="jdbc:oracle:thin:@localhost:1521:xe";
	String mysql_url="jdbc:mysql://localhost:3306/spro?useUnicode=true&characterEncoding=UTF-8";
	String mysql_id="root";
	String mysql_pw="1234";
	
public DBmem ckLogin(String id, String pw) {
	
	DBmem member = null;
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
			member = new DBmem();
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
}
