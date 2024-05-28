package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import backweb.vo.Dept;

public class A03_DaoPool {
	// request.setAttribute("dao", new A03_DaoPool());
	public Dept getDeptJ(int deptno) {
		Dept dept = null;
		String sql = "select *\r\n" + 
					"from dept01\r\n" + 
					"where deptno = ? ";
		try (
			Connection con = DBconJ.getConnection();  // 웹서버에 로딩 후, 화면 실행시
			//Connection con = DBCon.con(); // main()에서 테스트용 
			PreparedStatement pstmt = con.prepareStatement(sql);) {
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
		A03_DaoPool dao = new A03_DaoPool();
		Dept d= dao.getDeptJ(10);
		System.out.println(d.getDeptno()+":"+d.getDname()+":"+d.getLoc());

	}

}
