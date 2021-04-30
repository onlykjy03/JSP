package practice2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class login2 {

	public int loginCK(String id, String pw) {
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;

		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn=DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","AI","1234");
			pstmt = conn.prepareStatement("SELECT * FROM SPRO_MEMBER2 WHERE ID=? AND PW=?");
			pstmt.setString(1,id);
			pstmt.setString(2,pw);
			rs=pstmt.executeQuery();
			if(rs.next()) {

			return 0;
			}
			else {
				return -1;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return -1;
		}
		finally{
			try{
				if(pstmt !=null) pstmt.close();
				if(conn !=null) conn.close();
				if(rs != null) rs.close();
			}catch(Exception ex){
				
			}
		}

		
	}
	
}
