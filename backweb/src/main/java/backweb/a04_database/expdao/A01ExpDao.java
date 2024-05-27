package backweb.a04_database.expdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import backweb.a04_database.DBConn;

public class A01ExpDao {
	public Object tempSelect(String sch) {
		// 1. 조회하여 결과를 리턴할 객체를 선언한다.(select문에 의한 결과값을 리턴할 내용)
		Object ob = new Object();
		// 2. 사용되는 sql 구문을 처리한다.
		String sql = "SELECT * FROM emp01 WHERE ename like ? ";
		// 3. 본격적으로 연결/대화/결과/자원해제예외처리..
		// 매개변수로 처리할 때 자원해제 처리된다.
		try (Connection con = DBConn.con(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, "%" + sch + "%");
			try (ResultSet rs = pstmt.executeQuery();) {
				// System.out.println("데이터 있음:"+rs.next());
				// System.out.println("첫번째 행의 첫번째 열데이터:"+rs.getString(1));
				while (rs.next()) {
					System.out.print(rs.getInt("empno") + "\t");
					System.out.print(rs.getString("ename") + "\t");
					System.out.print(rs.getDouble("sal") + "\t");
					System.out.print(rs.getInt("deptno") + "\n");
				}
			}

		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
		return ob;
	}	
	// sql ==> vo ==> 기능메서드 ==> 메서드안에 처리 부분 ==> main()호츨
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
