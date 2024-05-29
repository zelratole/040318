package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Emp;
// backweb.a04_database.A04_EmpDao, backweb.vo.Emp
public class A04_EmpDao {
	public List<Emp> getEmpList(Emp sch) {
		List<Emp> empList = new ArrayList<Emp>();
		String sql = "SELECT * \r\n" 
				+ "	  FROM emp05\r\n" 
				+ "   WHERE ename LIKE ?\r\n" 
				+ "	  AND job LIKE ?	 ";
		if(sch.getEname()==null) sch.setEname(""); // like 키워드 검색으로 초기 전체 처리
		if(sch.getJob()==null) sch.setJob(""); // 
		try (Connection con = DBConn.con(); // main() 에서 테스트용
				// Connection con = DBconJ.getConnection(); // 웹서버에 로딩 후, 화면 실행시
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
					empList.add(new Emp(rs.getInt("empno"), rs.getString("ename"),rs.getString("job"),
										rs.getInt("mgr"),rs.getDate("hiredate"),rs.getDouble("sal"),
										rs.getDouble("comm"),rs.getInt("deptno") ) );
				}
			}

		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}

		return empList;
	}
	public static void main(String args[]) {
		A04_EmpDao dao = new A04_EmpDao();
		for(Emp e:dao.getEmpList(new Emp("",""))) {
			System.out.print(e.getEname()+"\t");
			System.out.print(e.getJob()+"\t");
			System.out.print(e.getSal()+"\n");
			
		}
	}
}
