SELECT * FROM emp;
/*
# 데이터 베이스 무결성 제약 조건..
1. 데이터의 정확성과 일관성을 보장하기 위한 처리방법
2. 데이터의 정확성을 유지하여 다향한 종류의 업무규칙을 고려함
	1) student 테이블에서 학년 데이터는 1,2,3,4 중의 하나만 입력 가능
	2) 모든 학생의 학번은 유일하게 처리
	3) student 테이블의 지도 교수 번호는 professor 테이블의 교수번호 중의 하나와 반드시 일치
3. 데이터 무결성 제약조건의 장점
	1) 테이블 생성시, 무결성 제약조건을 정의 가능
		- 생성 후, 제약조건 변경이나 설정도 가능
	2) 테이블에 대해 정의, 데이터 딕션너리에 저장되므로
		응용프로그램에서 입력되는 모든 데이터에 대하여 동일하게 적용
	3) 제약조건을 활성화/비활성화 할 수 있어 융통성 있게 사용 가능
4. 무결성 제약조건의 종류
	1) not null : 데이터에 null을 포함할 수 없음. 행단위로 입력시 해당 열은 반드시 입력되어야
		처리가 된다.
	2) unique key : 테이블의 모든 행에서 고유한 값을 갖는 열 또는 열 조합을 지정해야 한다.
		ex) 학번, 주민번호, 사원번호는 중복되지 않아야 한다.
		# null은 입력이 가능하고, null은 중복이 가능
	3) primary key : 해당 컬럼 값은 반드시 존재하며 유일해야 한다.
		not null과 unique가 결합된 형태
		주로 테이블에서 식별해야할 컬럼 즉, key를 설정할 때, 사용된다.
		ex) emp 테이블의 empno, dept테이블의 deptno
	4) check : 해당 컬럼에 저장 가능한 데이터 범위이나 조건을 지정 처리
		ex) student테이블의 학년은 1,2,3,4만 데이터로 넣을 수 있다.
		임시적으로 inline으로 subquery를 통해 데이터의 입력 범위를 설정도 가능하다.
	5) foreign key : 한 열과 참조된 테이블의 열간의 외리 키 관계를 설정하고 시행
		ex) 사원 테이블의 부서번호는 반드시 부서테이블에 있는 부서번호이어야 한다.
		주의) 연관테이블에 식별자와 비식별자로 처리할 때, 사용된다.
5. 설정 형식
	1) 컬럼명 데이터타입 constraints 제약조건명 제약조건
		제약조건명 : 테이블_컬럼명_제약조건종류
	ex) primary key 설정
		create table student(
			stundo number constraint student_stundo_pk primary eky,
			name varchar2 not null,
			grade number(1) constraint 
				student_grade_ck check(grade in(1,2,3,4))
		);		
	2) 제약조건 이름 : 테이블명_컬럼명_제약조건약자
		제약조건 종류 : pk, uq, nn, fk
		이런 제약조건사항은 sys.all_constraints : DB시스템에 있는 제약조건
			메타테이블에서 확인할 수 있다..
			ps) 메타테이블 : 정보의 정보 개념으로 테이블에 대한 정보를 가진 것을 말한다.
			주로 테이블에 대한 정보를 확인할 수 있다.
 * */
SELECT *
FROM sys.all_constraints
WHERE table_name LIKE 'EMP';
-- # not null 제약 조건 테이블 설정 및 데이터 테이스 해보기.
CREATE TABLE student03(
	name varchar2(30) CONSTRAINT student03_name_nn NOT NULL
);
SELECT *
FROM sys.all_constraints
WHERE table_name = 'STUDENT03';
CREATE TABLE student04(
	name varchar2(30) NOT NULL
);
SELECT *
FROM sys.all_constraints
WHERE table_name = 'STUDENT04';
-- constraint_name 확인하여 차이점(STUDENT03, STUDENT04)을 논의해보자..
INSERT INTO student03 values('홍길동');
INSERT INTO student03 values('길길동');
INSERT INTO student03 values('신길동');
INSERT INTO student03 values(null);
SELECT * FROM student03;
CREATE TABLE student05(
	studno number(8) NOT NULL,
	name varchar2(30) NOT NULL,
	kor NUMBER,
	eng NUMBER,
	math number
);
SELECT * FROM student05;
INSERT INTO student05 values(100,'홍길동',70,90,90);
-- 명시적 null  처리 오류발생(constraints)
INSERT INTO student05 values(null,'홍길동',70,90,90);
INSERT INTO student05 values(101,null,70,90,90);
INSERT INTO student05(studno, name) values(101,'마길동');
INSERT INTO student05(studno, kor) values(103,80);
-- 묵시적 null 처리도 오류발생(constraints)
INSERT INTO student05(kor, eng, math) values(90,80,80);
-- 에러가 나는 원인, 에러가 나지 않게 할려면 최소한 어떤 처리를 해야 하는지?
/*
NOT NULL 제약 조건의 중요성: 필수적으로 입력되어야 하는 컬럼에 대해 제약 조건을 설정함으로써 데
	이터 무결성을 유지할 수 있습니다.
부분 입력 시 NULL 처리: 특정 컬럼에만 값을 입력할 때 나머지 컬럼의 기본값 설정 및 
	NULL 처리 방법에 대해 논의할 수 있습니다.
오류 처리: 제약 조건 위반 시 발생하는 오류를 어떻게 처리하고 예방할 수 있는지에 대해 논의할 수 있습니다.


 * */























