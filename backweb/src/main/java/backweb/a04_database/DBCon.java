package backweb.a04_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	// DB연동 공통 모듈(모두 다 이해X, 한번만 들어 주시고 pass)
	// 연결 처리 메서드
	/*
	# 전화기로 누구와 통화를 할 때..
	1. 전화기로 연결이 될려면 통신망 갖추어져야 합니다.
		==> driver : oracle.jdbc.driver.OracleDriver
		데이터베이스가 연결할 수 있게 필요로 하는 여러가지 추가적인 프로그램이 메모리로 로딩
		해서 처리되어 있어야 함 : Class.forName("oracle.jdbc.driver.OracleDriver");
		WEB-INF\lib\ojdbc11.jar
	2. 전화기로 전화번호를 입력/저장된 전화번호로 상대방에게 전화를 시도..
		==> jdbc:oracle:thin:@localhost:1521:xe 
			jdbc:oracle:thin: (전화기로 하면 통신사-서버종류)
			localhost- ip :(실제전화번호)  ex) 124.24.34.43 주소로 전세계 망으로 접속처리. 
											IPv4 주소 . . . . . . . . . : 192.168.0.17(학원안에서)
											고정ip 할당 받으면(통신사) 전세계적으로 유일하여 접속이 가능하다.
											localhost : 내가 현재 컴퓨터에 서버가 구축되어 있고, 그 서버는
												접속할 때 사용되는 loop back(자기가 자기를 호출)할 때 사용되는
												ip 주소 (개발할 때 주로 많이 활용됨 127.0.0.1)
												client, server가 같은 컴퓨터에서 테이스용으로 사용할 때 주로
												활용된다.
	3. 전화기로 연결 완료된 내용을 처리 : Connection
		Connection conn = DriverManager.getConnection(url,"scott","tiger");
	4. 전화를 했을 때, 연결이 안되거나 통신상 장에가 있는 부분을 메시지로 표현 하는 부분..
			try {
			} catch (ClassNotFoundException e) {
				System.out.println("클래스 예외:"+e.getMessage());
				==> 전화기로 비유하면 통신망 문제(jdbc드라이버 문제)
			} catch (SQLException e){
				System.out.println("sql 예외:"+e.getMessage());
				==> 전화기로 비유하면 연결이나 데이터베이스 sql 문제
			} catch(Exception e){
				System.out.println("기타 예외:"+e.getMessage());
				==> 기타 그외의 모든 문제..
			}								
											
		
	 * 
	 * */
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
