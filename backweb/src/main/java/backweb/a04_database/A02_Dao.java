package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Dept;
import backweb.vo.Emp01;
import backweb.vo2.Dept01;
import backweb.vo2.Emp02;
import backweb.vo2.Emp03;
import backweb.vo2.Emp11;
import backweb.vo2.Salgrade01;

//backweb.a04_database.A02_Dao
public class A02_Dao {
	// 조회하는 template : 복사해서 핵심부분만 변경경해서 사용
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

	// 조회하는 template : 복사해서 핵심부분만 변경경해서 사용
	public int tempCRUD(String ename, String job) {
		// 1. 조회하여 결과를 리턴할 객체를 선언한다.(select문에 의한 결과값을 리턴할 내용)
		int cudCnt = 0;
		// 2. 사용되는 sql 구문을 처리한다.
		String sql = "INSERT INTO emp01(ename, job) VALUES(?,?) ";
		// 3. 본격적으로 연결/대화/결과/자원해제예외처리..
		// 매개변수로 처리할 때 자원해제 처리된다.
		Connection con2 = null;
		try (Connection con = DBConn.con(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			con2 = con;
			con.setAutoCommit(false); // auto commit 방지
			pstmt.setString(1, ename);
			pstmt.setString(2, job);
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

	public Dept getDept(int deptno) {
		Dept dept = null;
		String sql = "select *\r\n" + "from dept01\r\n" + "where deptno = ? ";
		try (Connection con = DBConn.con(); PreparedStatement pstmt = con.prepareStatement(sql);) {
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
	// DBconJ

	// 조회하는 template : 복사해서 핵심부분만 변경경해서 사용
	public Emp01 getEmp(int empno) {
		Emp01 emp = null;
		String sql = "select empno, ename, sal, deptno\r\n" + "from emp01\r\n" + "where empno = ?";
		try (Connection con = DBConn.con(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, empno);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
					emp = new Emp01(rs.getInt("empno"), rs.getString("ename"), rs.getDouble("sal"),
							rs.getInt("deptno"));
				}
			}
		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
		return emp;
	}
	// DBconJ

	// 조회하는 template : 복사해서 핵심부분만 변경경해서 사용
	public List<Emp01> getEmpList(String ename, String job) {
		List<Emp01> empList = new ArrayList<Emp01>();
		String sql = "select empno, ename, job, sal, deptno\r\n" + "from emp01\r\n" + "where ename like ?\r\n"
				+ "AND job LIKE ? ";
		try (Connection con = DBConn.con(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, "%" + ename + "%");
			pstmt.setString(2, "%" + job + "%");
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

	// 조회하는 template : 복사해서 핵심부분만 변경경해서 사용
	public int deptInsert(Dept ins) {
		// 1. 조회하여 결과를 리턴할 객체를 선언한다.(select문에 의한 결과값을 리턴할 내용)
		int cudCnt = 0;
		// 2. 사용되는 sql 구문을 처리한다.
		String sql = "INSERT INTO dept01 VALUES(?,?,?) ";
		// 3. 본격적으로 연결/대화/결과/자원해제예외처리..
		// 매개변수로 처리할 때 자원해제 처리된다.
		Connection con2 = null;
		try (Connection con = DBConn.con(); PreparedStatement pstmt = con.prepareStatement(sql);) {
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

	// 메서드 선언하기..
	// sql ==> 데이터확인 ==> 프로그램(java)
	// 결과값은 메서드의 return유형(Emp01), where조건문 매개변수(int empno)로 처리..
	public Emp11 getEmp01(int empno) {
		Emp11 emp = null;
		String sql = "SELECT empno, ename, job, sal, hiredate\r\n" 
					+ "FROM emp\r\n" 
					+ "WHERE empno = ? ";
		try (Connection con = DBConn.con(); 
		     PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, empno);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
					System.out.print(rs.getInt("empno") + "\t");
					System.out.print(rs.getString("ename") + "\t");
					System.out.print(rs.getString("job") + "\t");
					System.out.print(rs.getDouble("sal") + "\t");
					System.out.print(rs.getDate("hiredate") + "\n");
					emp = new Emp11(rs.getInt("empno"), 
									rs.getString("ename"),
									rs.getString("job"), 
									rs.getDouble("sal"),
									rs.getDate("hiredate") );
				}
			}

		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}

		return emp;
	}

	// 행이 여러 개일 때 선언방법..
	public List<Emp02> getEmpList(int deptno) {
		List<Emp02> empList = new ArrayList<Emp02>();
		String sql = "SELECT ename, job, mgr, hiredate\r\n" + "	  FROM emp\r\n" + "	  WHERE deptno = ?  ";

		return empList;
	}

	public Dept01 getDept01(int deptno) {
		Dept01 d = null;
		String sql = "SELECT *\r\n" + "FROM dept\r\n" + "WHERE deptno = ? ";

		return d;
	}

	public Salgrade01 getSalgrade(int grade) {
		Salgrade01 salOb = null;
		String sql = "SELECT *\r\n" + "FROM salgrade\r\n" + "WHERE grade = ? ";
		return salOb;
	}

	public List<Dept01> getDeptList01(String dname) {
		List<Dept01> dlist = new ArrayList<Dept01>();
		String sql = "SELECT *\r\n" + "FROM dept\r\n" + "WHERE dname LIKE ?";

		return dlist;
	}

	public List<Emp03> getEmpList02(String job) {
		List<Emp03> empList = new ArrayList<Emp03>();
		String sql = "SELECT empno, ename, job, hiredate, sal\r\n" 
					+ "FROM emp\r\n" + "WHERE job = ?";
		try( Connection con = DBConn.con();
				 PreparedStatement pstmt = con.prepareStatement(sql); ){
				 pstmt.setString(1, job);
				try(ResultSet rs = pstmt.executeQuery();){
					//System.out.println("데이터 있음:"+rs.next());
					//System.out.println("첫번째 행의 첫번째 열데이터:"+rs.getString(1));
					while(rs.next()) {
						System.out.print(rs.getInt("empno")+"\t");
						System.out.print(rs.getString("ename")+"\t");
						System.out.print(rs.getString("job")+"\t");
						System.out.print(rs.getDate("hiredate")+"\t");
						System.out.print(rs.getDouble("sal")+"\n");
						empList.add( new Emp03(
										rs.getInt("empno"),rs.getString("ename"),rs.getString("job"),
										rs.getDate("hiredate"),rs.getDouble("sal") 
									 )
								   );
					}
				}
				
			}catch(SQLException e) {
				System.out.println("DB 처리 에러:"+e.getMessage());
			}catch(Exception e) {
				System.out.println("일반 에러:"+e.getMessage());
			}
		

		return empList;
	}

	// 등록/수정/삭제하는 template
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_Dao dao = new A02_Dao();
		Emp11 emp11 = dao.getEmp01(7499);
		System.out.println("# 검색된 데이터 #");
		System.out.println("ename:"+emp11.getEname());
		System.out.println("job:"+emp11.getJob());
		System.out.println("sal:"+emp11.getSal());

		//ystem.out.println("등록?" + dao.deptInsert(new Dept(99, "인사", "수원")));
		// System.out.println("등록?"+dao.tempCRUD("하길동","대리"));
		/*
		 * 
		 * for(Emp01 emp:dao.getEmpList("", "")) {
		 * System.out.print(emp.getEmpno()+"\t"); System.out.print(emp.getEname()+"\t");
		 * System.out.print(emp.getJob()+"\t"); System.out.print(emp.getSal()+"\t");
		 * System.out.print(emp.getDeptno()+"\n"); }
		 */
		/*
		 * Emp01 emp = dao.getEmp(7499); if(emp!=null) {
		 * System.out.print(emp.getEmpno()+"\t"); System.out.print(emp.getEname()+"\t");
		 * System.out.print(emp.getSal()+"\t"); System.out.print(emp.getDeptno()+"\n");
		 * }
		 */
		/*
		 * dao.tempSelect("A"); Dept d = dao.getDept(40);
		 * System.out.println("# 결과 객체 #"+d); if(d!=null) { // 조회 결과 값이 있을 때
		 * System.out.print(d.getDeptno()+"\t"); System.out.print(d.getDname()+"\t");
		 * System.out.println(d.getLoc()+"\t"); }
		 */

	}

}
