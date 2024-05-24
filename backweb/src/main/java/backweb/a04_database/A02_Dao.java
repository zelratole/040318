package backweb.a04_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import backweb.vo.Dept;

public class A02_Dao {
	// 조회하는 template : 복사해서 핵심부분만 변경경해서 사용
	public Object tempSelect(String sch) {
		// 1. 조회하여 결과를 리턴할 객체를 선언한다.(select문에 의한 결과값을 리턴할 내용)
		Object ob = new Object();
		// 2. 사용되는 sql 구문을 처리한다.
		String sql = "SELECT * FROM emp WHERE ename like ? ";
		// 3. 본격적으로 연결/대화/결과/자원해제예외처리..
		//    매개변수로 처리할 때 자원해제 처리된다.
		try( Connection con = DBConn.con();
			 PreparedStatement pstmt = con.prepareStatement(sql); ){
			 pstmt.setString(1, "%"+sch+"%");
			try(ResultSet rs = pstmt.executeQuery();){
				//System.out.println("데이터 있음:"+rs.next());
				//System.out.println("첫번째 행의 첫번째 열데이터:"+rs.getString(1));
				while(rs.next()) {
					System.out.print(rs.getInt("empno")+"\t");
					System.out.print(rs.getString("ename")+"\t");
					System.out.print(rs.getDouble("sal")+"\t");
					System.out.print(rs.getInt("deptno")+"\n");
				}
			}
			
		}catch(SQLException e) {
			System.out.println("DB 처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("일반 에러:"+e.getMessage());
		}
		
		return ob;
	}
	public Dept getDept(int deptno) {
		Dept dept = null;
		String sql = "select *\r\n"
				+ "from dept\r\n"
				+ "where deptno = ? ";
		try( Connection con = DBConn.con();
			 PreparedStatement pstmt = con.prepareStatement(sql); ){
			 pstmt.setInt(1, deptno);
			try(ResultSet rs = pstmt.executeQuery();){
				if(rs.next()) {
					dept = new Dept(rs.getInt("deptno"), rs.getString("dname"), rs.getString("loc"));
				}
			}		
		}catch(SQLException e) {
			System.out.println("DB 처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("일반 에러:"+e.getMessage());
		}		
		return dept;
	}
	// 등록/수정/삭제하는 template
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_Dao dao = new A02_Dao();
		dao.tempSelect("A");
		Dept d = dao.getDept(20);
		System.out.println("# 결과 객체 #"+d);
		if(d!=null) { // 조회 결과 값이 있을 때
			System.out.print(d.getDeptno()+"\t");
			System.out.print(d.getDname()+"\t");
			System.out.println(d.getLoc()+"\t");
		}
		
		
		

	}

}
