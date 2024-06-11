package backweb.a04_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class A01_DBConn {
	/*
# DB 연동 처리..
1. 연동을 위한 핵심
	1) 환경 설정
	 	jdbc드라이버 설정
	 	DB 서버 구동 중
	2) 핵심 속성
		- url
		- 계정
		- 비번
		- jdbc드라이버 설정..
	 * */
	// static final : 자바에서 상수로 객체 생성없이 바로 상수로 사용할 때 사용
	private static final String URL="jdbc:oracle:thin:@192.168.0.10:1521:xe";
	private static final String USERNAME="scott";
	private static final String PASSWORD="tiger";
	// 객체를 생성없이 객체들의 공통 메셔드 선언 .static
	public static Connection con() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
	public static void close(AutoCloseable... resources) { // AutoCloseable를 상속받는 여러 배열을 한번에 처리
		for(AutoCloseable resource:resources) {
			if(resource!=null) {
				try {
					resource.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					System.out.print(resource.getClass().getSimpleName());
					System.out.println("닫기 실패");
				}
			}
		}
		System.out.println("자원해제처리.");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			close( con() );
			System.out.println("접속성공");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
