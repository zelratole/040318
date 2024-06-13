package springweb.a02_mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
// springweb.a02_mvc.A04_EmpDao
@Component
public class A04_EmpDao implements A03_EmpDaoInf {

	public List<Emp> getEmpList(Emp sch) {
	
		List<Emp> empList = new ArrayList<Emp>();
		String sql = "SELECT * \r\n" 
				+ "	  FROM emp05\r\n" 
				+ "   WHERE ename LIKE ?\r\n" 
				+ "	  AND job LIKE ? \r\n"
				+ "	  order by empno ";
		if (sch.getEname() == null)
			sch.setEname(""); // like 키워드 검색으로 초기 전체 처리
		if (sch.getJob() == null)
			sch.setJob(""); //
		try (  Connection con = DBconJ.getConnection(); // 웹서버에 로딩 후, 화면 실행시
			   PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, "%" + sch.getEname() + "%");
			pstmt.setString(2, "%" + sch.getJob() + "%");
			try (ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					System.out.print(rs.getInt("empno") + "\t");
					System.out.print(rs.getString("ename") + "\t");
					System.out.print(rs.getString("job") + "\t");
					System.out.print(rs.getInt("mgr") + "\t");
					System.out.print(rs.getDate("hiredate") + "\t");
					System.out.print(rs.getDouble("sal") + "\t");
					System.out.print(rs.getDouble("comm") + "\t");
					System.out.print(rs.getInt("deptno") + "\n");
					empList.add(new Emp(rs.getInt("empno"), rs.getString("ename"), rs.getString("job"),
							rs.getInt("mgr"), rs.getDate("hiredate"), rs.getDouble("sal"), rs.getDouble("comm"),
							rs.getInt("deptno")));
				}
			}
	
		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
	
		return empList;
	}

}
