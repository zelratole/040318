package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Bonus;

public class A06_BonusDao {
	public List<Bonus> getBonusList(int start, int end){
		 List<Bonus> blist = new ArrayList<Bonus>();
		 String sql = "SELECT *\r\n"
		 		+ "FROM bonus10\r\n"
		 		+ "WHERE bonus_amount BETWEEN ? AND ?";
			try (
					Connection con = DBConn.con(); // main() 에서 테스트용
					//Connection con = DBconJ.getConnection();  // 웹서버에 로딩 후, 화면 실행시	
					PreparedStatement pstmt = con.prepareStatement(sql);) {
					pstmt.setInt(1, start);
					pstmt.setInt(2, end);
					try (ResultSet rs = pstmt.executeQuery();) {

						while (rs.next()) {
							System.out.print(rs.getInt("bounus_id") + "\t");
							System.out.print(rs.getInt("employee_id") + "\t");
							System.out.print(rs.getInt("bounus_amount") + "\t");
							System.out.print(rs.getDate("bounus_date") + "\n");
							blist.add(new Bonus(rs.getInt("bounus_id") , rs.getInt("employee_id"),
									rs.getInt("bounus_amount"), rs.getDate("bounus_date")));
						}
					}

				} catch (SQLException e) {
					System.out.println("DB 처리 에러:" + e.getMessage());
				} catch (Exception e) {
					System.out.println("일반 에러:" + e.getMessage());
				}		 
		 
		 return blist;
	}
	
	
	public Object tempSelect(String sch) {
		// 1. 조회하여 결과를 리턴할 객체를 선언한다.(select문에 의한 결과값을 리턴할 내용)
		Object ob = new Object();
		// 2. 사용되는 sql 구문을 처리한다.
		String sql = "SELECT * FROM emp01 WHERE ename like ? ";
		// 3. 본격적으로 연결/대화/결과/자원해제예외처리..
		// 매개변수로 처리할 때 자원해제 처리된다.
		try (
			Connection con = DBConn.con(); // main() 에서 테스트용
			//Connection con = DBconJ.getConnection();  // 웹서버에 로딩 후, 화면 실행시	
			PreparedStatement pstmt = con.prepareStatement(sql);) {
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
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}