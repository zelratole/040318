package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Emp;
// backweb.a04_database.A04_EmpDao, backweb.vo.Emp  getEmp(int empno)
public class A04_EmpDao {
	public List<Emp> getEmpList(Emp sch) {
		
		List<Emp> empList = new ArrayList<Emp>();
		String sql = "SELECT * \r\n" 
				+ "	  FROM emp05\r\n" 
				+ "   WHERE ename LIKE ?\r\n" 
				+ "	  AND job LIKE ? \r\n"
				+ "	  order by empno ";
		if(sch.getEname()==null) sch.setEname(""); // like 키워드 검색으로 초기 전체 처리
		if(sch.getJob()==null) sch.setJob(""); // 
		try (   //Connection con = DBConn.con(); // main() 에서 테스트용
				Connection con = DBconJ.getConnection(); // 웹서버에 로딩 후, 화면 실행시
				PreparedStatement pstmt = con.prepareStatement(sql);
				) {
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
	public int insertEmp(Emp ins){
		int insCnt = 0;
		String sql = "INSERT INTO emp05\r\n"
					+ "	values(?,?,?,?,to_date(?,'YYYY-MM-DD'),?,?,?)";
		Connection con2 = null;
		try (
			Connection con = DBConn.con(); // main() 에서 테스트용
			//Connection con = DBconJ.getConnection();  // 웹서버에 로딩 후, 화면 실행시	
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			con2 = con;
			con.setAutoCommit(false); // auto commit 방지
			pstmt.setInt(1, ins.getEmpno());
			pstmt.setString(2, ins.getEname());
			pstmt.setString(3, ins.getJob());
			pstmt.setInt(4, ins.getMgr());
			pstmt.setString(5, ins.getHiredateStr());
			pstmt.setDouble(6, ins.getSal());
			pstmt.setDouble(7, ins.getComm());
			pstmt.setInt(8, ins.getDeptno());
			insCnt = pstmt.executeUpdate();
			if (insCnt > 0) {
				System.out.println(insCnt + "건 등록 성공!");
				con.commit();
			} 
		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
			if (con2 != null) {
				try {
					con2.rollback();
				} catch (SQLException e1) {
					System.out.println("롤백 예외");
				}
			}
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
		
		
		return insCnt;
	}		
	public Emp getEmp(int empno) {	
		Emp emp = null;
		String sql = "SELECT * \r\n" 
				+ "	  FROM emp05\r\n" 
				+ "   WHERE empno = ?";
		try (   //Connection con = DBConn.con(); // main() 에서 테스트용
				Connection con = DBconJ.getConnection(); // 웹서버에 로딩 후, 화면 실행시
				PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			pstmt.setInt(1, empno);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
					emp = new Emp(rs.getInt("empno"), rs.getString("ename"),rs.getString("job"),
										rs.getInt("mgr"),rs.getDate("hiredate"),rs.getDouble("sal"),
										rs.getDouble("comm"),rs.getInt("deptno") ) ;
				}
			}
		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}	
		return emp;
	}
	public static void main(String args[]) {
		A04_EmpDao dao = new A04_EmpDao();
		Emp emp = dao.getEmp(1000);
		System.out.println("단일데이터:"+emp.getEname());
		/*
		dao.insertEmp(new Emp(1002,"오길동","대리",7601,"2024-05-29",4000,100,10));
		
		
		for(Emp e:dao.getEmpList(new Emp("",""))) {
			System.out.print(e.getEname()+"\t");
			System.out.print(e.getJob()+"\t");
			System.out.print(e.getSal()+"\n");
			
		}
		*/
	}
}
