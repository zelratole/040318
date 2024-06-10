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
 * 
# 조별 프로젝트 진행 공통 DB서버 설정 절차
1. 조원 중에 하나의 PC 또는 남는 PC에 DB서버(oracle를 설치한다)
2. 관리자 계정으로 아래와 같이 공통을 사용할 DB 서버의 게정을 만든다.
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO 계정명 IDENTIFIED BY 비밀번호;
ALTER USER 계정명 DEFAULT TABLESPACE USERS;
ALTER USER 계정명 TEMPORARY TABLESPACE TEMP;
CONNECT 계정명/비번호
사용할 테이블 생성 및 샘플데이터 입력.
주의) 계정은 대소문자 구별을 하지 않으나 비밀번호는 대소문자를 구분한다.
3. 서버의 ip 주소 확인
   cmd ==> ipconfig ==> 192.168.0.17 주소 확인
4. 방화벽 설정해제
	https://m.blog.naver.com/devch/220790632382
	
5. 외부에서 DB접속 툴(자바프로그램으로 해당 서버 접속 확인	
	
ex) 조별 특정 서버를 만들고 계정을 만든 후, 정상적으로 처리되는 것 확인했으면 손들기.
	

 * 
 * */


