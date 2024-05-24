package backweb.a04_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	// DB연동 공통 모듈(모두 다 이해X, 한번만 들어 주시고 pass)
	// 연결 처리 메서드
	public static Connection con() throws SQLException {
		Connection conn = null;
		
			// 1. 드라이버 메모리에 설정
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				conn = DriverManager.getConnection(url,"scott","tiger");
				System.out.println("DB 접속 성공");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println("클래스 예외:"+e.getMessage());
			}
			// 2. DB예외 처리
		return conn;
	}
	
	// 자원해제 처리 메서드
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
