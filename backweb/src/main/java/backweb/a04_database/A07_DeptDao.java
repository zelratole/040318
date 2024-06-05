package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Dept;
import backweb.vo.Emp;
// A07_DeptDao  getDeptList backweb.vo.Dept
public class A07_DeptDao {
	public List<Dept> getDeptList(Dept sch){
		List<Dept> dlist = new ArrayList<Dept>();
		String sql = "SELECT *\r\n"
				+ "FROM dept01\r\n"
				+ "WHERE dname LIKE ?\r\n"
				+ "AND loc LIKE ? ORDER BY deptno";
		if (sch.getDname() == null)
			sch.setDname(""); // like 키워드 검색으로 초기 전체 처리
		if (sch.getLoc() == null)
			sch.setLoc(""); //
		try (  Connection con = DBConn.con(); // main() 에서 테스트용
				//Connection con = DBconJ.getConnection(); // 웹서버에 로딩 후, 화면 실행시
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, "%" + sch.getDname() + "%");
			pstmt.setString(2, "%" + sch.getLoc() + "%");
			try (ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					dlist.add(new Dept(rs.getInt("deptno"), rs.getString("dname"), rs.getString("loc")));
				}
			}

		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}		
		
		return dlist;
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A07_DeptDao dao = new A07_DeptDao();
		for(Dept d:dao.getDeptList(new Dept())) {
			System.out.println(d.getDname());
		}

	}

}
