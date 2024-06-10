/*
# 권한...
1. 오라클데이터베이스에서 새로운 계정을 생성하고 권한을 설정하는 과정은 다음과 같은 단계로 진행된다
2. 단계별 진행 내용..
	1) 관리자 계정으로 접근.
		cmd
		sqlplus 
		system/1111	
 *  2) 새 사용자 생성
 * 		create user new_user identified by password;
 * 		new_user계정에 password 패스워드로 계정 생성
 * 		
 *	3) 기본 권한 부여
 *		- 접속권한부여 : 접속권한은(session) 
 *		  관리자 권한에 의해 접속권한 부여
 *		grant create session to new_user;
 *		ex) 새 사용자 생성한 후, 해당 계정으로 접속해서 접속이 안되는 것 확인하고,
 *		다시 관리자 권한으로 접속해서 권한을 부여한 후, 접속해본다.
 *		conn new_user/password;
 *		conn system/1111;
 *		conn new_user/password;
 *  4) 기타 권한 부여
 * 		grant create table to new_user;
 * 		grant create view to new_user;
 * 		grant select on emp to new_user;
 * 			emp계정의 조회권한을 new_user에게 부여한다.
 * 		grant resource to new_user;  자원의 사용 권한 부여(테이블 생성 수정 삭제, 조회등 일반
 * 			적인 모든 권한 부여)
 * */


