package backweb.a04_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	public static Connection con() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
	}
	public static void close(AutoCloseable... resources) { 
		for(AutoCloseable resource:resources) {
			if(resource!=null) {
				try {
					resource.close();
				} catch (Exception e) {
					System.out.print(resource.getClass().getSimpleName());
					System.out.println("자원해제 실패");
				}
			}
		}
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
