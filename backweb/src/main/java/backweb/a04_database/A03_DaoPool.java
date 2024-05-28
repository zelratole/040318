package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import backweb.vo.Dept;

public class A03_DaoPool {

	public Dept getDeptJ(int deptno) {
		Dept dept = null;
		String sql = "select *\r\n" + "from dept01\r\n" + "where deptno = ? ";
		try (Connection con = DBconJ.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, deptno);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
					dept = new Dept(rs.getInt("deptno"), rs.getString("dname"), rs.getString("loc"));
				}
			}
		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
		return dept;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
