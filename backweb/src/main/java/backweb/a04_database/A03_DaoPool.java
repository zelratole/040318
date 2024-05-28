package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Dept;
import backweb.vo.Emp01;
// backweb.a04_database.A03_DaoPool
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
	public List<Emp01> getEmpList(Emp01 sch) {
		List<Emp01> empList = new ArrayList<Emp01>();
		String sql = "select empno, ename, job, sal, deptno\r\n" 
		           + "from emp01\r\n" 
				   + "where ename like ?\r\n"
				   + "AND job LIKE ? ";
		try (Connection con = DBconJ.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, "%" + sch.getEname() + "%");
			pstmt.setString(2, "%" + sch.getJob() + "%");
			try (ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					empList.add(new Emp01(rs.getInt("empno"), rs.getString("ename"), rs.getString("job"),
							rs.getDouble("sal"), rs.getInt("deptno")));
				}
			}
		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
		return empList;
	}
	// A03_DaoPool.java에  deptInsert(Dept ins) 메서드 호출해서 등록 처리
	public int deptInsert(Dept ins) {
		// 1. 조회하여 결과를 리턴할 객체를 선언한다.(select문에 의한 결과값을 리턴할 내용)
		int cudCnt = 0;
		// 2. 사용되는 sql 구문을 처리한다.
		String sql = "INSERT INTO dept01 VALUES(?,?,?) ";
		// 3. 본격적으로 연결/대화/결과/자원해제예외처리..
		// 매개변수로 처리할 때 자원해제 처리된다.
		Connection con2 = null;
		try (Connection con = DBconJ.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			con2 = con;
			con.setAutoCommit(false); // auto commit 방지
			pstmt.setInt(1, ins.getDeptno());
			pstmt.setString(2, ins.getDname());
			pstmt.setString(3, ins.getLoc());
			cudCnt = pstmt.executeUpdate();
			if (cudCnt > 0) {
				System.out.println(cudCnt + "건 등록 성공!");
				con.commit();
			} else {
				System.out.println("등록 안 됨");
				con.rollback();
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

		return cudCnt;
	}	
	
	public static void main(String[] args) {
		A03_DaoPool dao = new A03_DaoPool();
		Dept d= dao.getDeptJ(10);
		System.out.println(d.getDeptno()+":"+d.getDname()+":"+d.getLoc());

	}

}
