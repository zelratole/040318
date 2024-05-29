package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backweb.vo.Department;
import backweb.vo.Emp;
//  backweb.a04_database.A05_DepartDao  backweb.vo.Department  getDepartmentList(),insertDepartment

public class A05_DepartDao {

	public List<Department> getDepartmentList(String department_name){
		List<Department> dlist = new ArrayList<Department>();
		String sql = "SELECT *\r\n"
					+ "	FROM DEPARTMENTS01\r\n"
					+ "	WHERE department_name LIKE ?\r\n"
					+ "	order by department_id";
		if(department_name==null) department_name = ""; // 
		try (   Connection con = DBConn.con(); // main() 에서 테스트용
				//Connection con = DBconJ.getConnection(); // 웹서버에 로딩 후, 화면 실행시
				PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			pstmt.setString(1, "%" + department_name + "%");

			try (ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					System.out.print(rs.getInt("department_id") + "\t");
					System.out.print(rs.getString("department_name") + "\t");
					System.out.print(rs.getInt("manager_id") + "\t");
					System.out.print(rs.getInt("location_id") + "\n");
					dlist.add(new Department(rs.getInt("department_id"), rs.getString("department_name"),
											rs.getInt("manager_id"),rs.getInt("location_id") ) );
				}
			}

		} catch (SQLException e) {
			System.out.println("DB 처리 에러:" + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러:" + e.getMessage());
		}
		
		return dlist;
	}
	public int insertDepartment(Department ins) {
		int insCnt = 0;
		String sql = "insert into DEPARTMENTS01 values(?,?,?,?) ";
		Connection con2 = null;
		try (
			Connection con = DBConn.con(); // main() 에서 테스트용
			//Connection con = DBconJ.getConnection();  // 웹서버에 로딩 후, 화면 실행시	
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			con2 = con;
			con.setAutoCommit(false); // auto commit 방지

			
			
			pstmt.setInt(1, ins.getDepartment_id());
			pstmt.setString(2, ins.getDepartment_name());
			pstmt.setInt(3, ins.getManager_id());
			pstmt.setInt(4, ins.getLocation_id());
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
	public int updateDepartment(Department upt) {
		int uptCnt = 0;
		String sql = " ";
		return uptCnt;		
	}
	public int deleteDepartment(int department_id) {
		int delCnt = 0;
		String sql = " ";
		return delCnt;		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A05_DepartDao dao = new A05_DepartDao();
		dao.insertDepartment(new Department(12,"재무",88,99));
		for(Department dp:dao.getDepartmentList("")) {
			System.out.println(dp.getDepartment_name());
		}
	}

}
