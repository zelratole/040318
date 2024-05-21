<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
# 개념 이해, 실습문제
1. [개념] 테이블에 데이터의 입력하는 2가지 형식을 기술하세요.
2. [개념] 테이블에 특정 컬럼에 날짜 데이터를 입력하는 형식을 기술하세요.
3. [실습] 사원번호, 사원명, 입사일, 급여 테이블(emp05)을 만들고, 전체 데이터와 일부 컬럼 데이터를 입력하세요
4. [실습] 학생테이블(no, 이름, 국어, 영어, 수학)을 만들고, 번호와 이름만 할당, 전체컬럼을 할당하는 데이터를 입력하세요.
5. [개념] 데이터 베이스에서 commit과 rollback을 사용하는 이유와 eclipse에서 이를 위한 설정 처리 메뉴를 기술하세요.
6. [개념] 테이블 데이터의 수정 형식을 기술하고, 부서정보(dept01)를 수정하는 예제를 만드세요
7. [실습] 학생테이블(student-번호,이름, 국어,영어,수학) 데이터를 3개입력후, 국어, 영어, 수학 평균점수가 80이상인 학생의
         국어,영어,수학점수를 5%씩 향상하세요.
8. [개념] 테이블의 구조를 변경할 기본형식을 정리하고, dept01의 부서명과 부서위치를 변경하세요.
9. [개념] dept03 복사테이블을 만들고, 삭제 기본 형식을 정리하고, 부서번호가 10, 30번 정보를 삭제하세요
10. [실습] 회원가입형 쇼핑몰에서 필요한 membershopping 테이블을 만들고, 이 테이블에 회원가입, 회원 검색(회원이름), 
	로그인처리, 회원가입, 회원수정, 회원탈퇴시 사용되는 sql를 실습예제와 함께 작서앻 보세요.
11. [실습] salgrade 테이블을 복사테이블 2개를 만들어 하나는 이름을 변경하고, 하나는 삭제하는 처리를 하세요 

# 토론 주제
1. 테이블을 만들 때, 초기 컬럼명과 타입을 지정하는 경우와 복사테이블 만드는 경우 어떤 장단점이 있는가?
2. 날짜형의 입력시, 사용되는 to_date() 형식을 여러가지 형식을 살피고, 날짜, 날짜+시간 입력 형식이 어떤 것들이 있는지 정리해보세요.
3. autocommit이란 무엇인지? 장단점을 분석해 보세요.


# 내일 예습 범위(조원들과 함께 해당 내용을 살펴보세요)
1. jsp 모듈 처리 : include의 종류가 어떤 것이 있는가? 종류에 따라 어떤 장단점이 있는가?
2. el 태그 : script에 비해 어떤 장점이 있는가? 사용하는 형식은 무엇인가?
3. java List, Generic: 왜 자바는 List<타입>을 사용하여야하는가? 사용한 것과 사용하지 않는 것의 차이점은
   무엇인가? 
4. 데이터베이스 연동(java) : 데이터베이스 연동의 핵심 속성은 무엇인가? 



## 개념 이해

1. **테이블에 데이터를 입력하는 두 가지 형식:**
   - **INSERT INTO 테이블명 (컬럼1, 컬럼2, ...) VALUES (값1, 값2, ...);**
     ```sql
     INSERT INTO employees (employee_id, first_name, last_name) VALUES (101, 'John', 'Doe');
     ```
   - **INSERT INTO 테이블명 VALUES (값1, 값2, ...);**
     ```sql
     INSERT INTO employees VALUES (101, 'John', 'Doe', 'IT', 5000);
     ```

2. **테이블에 특정 컬럼에 날짜 데이터를 입력하는 형식:**
   - `TO_DATE` 함수를 사용하여 문자열을 날짜 형식으로 변환
     ```sql
     INSERT INTO employees (employee_id, hire_date) VALUES (101, TO_DATE('2023-05-20', 'YYYY-MM-DD'));
     ```

## 실습 문제

3. **사원번호, 사원명, 입사일, 급여 테이블(emp05)을 만들고, 전체 데이터와 일부 컬럼 데이터를 입력:**
   ```sql
   CREATE TABLE emp05 (
       empno NUMBER(4) PRIMARY KEY,
       ename VARCHAR2(50),
       hiredate DATE,
       sal NUMBER(7, 2)
   );

   INSERT INTO emp05 (empno, ename, hiredate, sal) VALUES (1, 'John Doe', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 5000);
   INSERT INTO emp05 (empno, ename, hiredate) VALUES (2, 'Jane Smith', TO_DATE('2022-12-01', 'YYYY-MM-DD'));
   ```

4. **학생테이블(no, 이름, 국어, 영어, 수학)을 만들고, 번호와 이름만 할당, 전체컬럼을 할당하는 데이터 입력:**
   ```sql
   CREATE TABLE students (
       no NUMBER(4) PRIMARY KEY,
       name VARCHAR2(50),
       korean NUMBER(3),
       english NUMBER(3),
       math NUMBER(3)
   );

   INSERT INTO students (no, name) VALUES (1, 'Alice');
   INSERT INTO students (no, name, korean, english, math) VALUES (2, 'Bob', 85, 90, 95);
   ```

5. **commit과 rollback을 사용하는 이유와 eclipse에서 이를 위한 설정 처리 메뉴:**
   - **Commit**: 트랜잭션의 변경 사항을 영구적으로 데이터베이스에 저장.
   - **Rollback**: 트랜잭션의 변경 사항을 취소하고 이전 상태로 복구.
   - **Eclipse 설정**: Window > Preferences > Data Management > SQL Development > SQL Editor > Enable Auto Commit

6. **테이블 데이터의 수정 형식을 기술하고, 부서정보(dept01)를 수정하는 예제:**
   ```sql
   UPDATE 테이블명 SET 컬럼명 = 새로운값 WHERE 조건;

   UPDATE dept01 SET dname = 'Research', loc = 'New York' WHERE deptno = 10;
   ```

7. **학생테이블 데이터 3개 입력 후, 국어, 영어, 수학 평균점수가 80이상인 학생의 점수를 5%씩 향상:**
   ```sql
   INSERT INTO students (no, name, korean, english, math) VALUES (3, 'Charlie', 70, 80, 90);
   INSERT INTO students (no, name, korean, english, math) VALUES (4, 'David', 85, 88, 90);
   INSERT INTO students (no, name, korean, english, math) VALUES (5, 'Eva', 90, 92, 95);

   UPDATE students SET
       korean = korean * 1.05,
       english = english * 1.05,
       math = math * 1.05
   WHERE (korean + english + math) / 3 >= 80;
   ```

8. **테이블의 구조를 변경할 기본 형식과 dept01의 부서명과 부서위치를 변경:**
   ```sql
   ALTER TABLE 테이블명 MODIFY 컬럼명 데이터타입;

   ALTER TABLE dept01 MODIFY (dname VARCHAR2(50), loc VARCHAR2(50));
   ```

9. **dept03 복사테이블을 만들고, 삭제 기본 형식을 정리하고, 부서번호가 10, 30번 정보를 삭제:**
   ```sql
   CREATE TABLE dept03 AS SELECT * FROM dept;

   DELETE FROM 테이블명 WHERE 조건;

   DELETE FROM dept03 WHERE deptno IN (10, 30);
   ```

10. **쇼핑몰 회원 테이블 생성 및 관련 SQL:**
    ```sql
    CREATE TABLE membershopping (
        member_id NUMBER PRIMARY KEY,
        member_name VARCHAR2(50),
        password VARCHAR2(50),
        email VARCHAR2(50),
        join_date DATE
    );

    -- 회원가입
    INSERT INTO membershopping (member_id, member_name, password, email, join_date)
    VALUES (1, 'John Doe', 'password123', 'john@example.com', SYSDATE);

    -- 회원 검색
    SELECT * FROM membershopping WHERE member_name like '%John Doe%';
    -- 로그인 처리
    id : [   ]
    pwd : [    ]
    [로그인]
    
    SELECT * FROM membershopping WHERE member_name = 'John Doe' AND password = 'password123';

    -- 회원 수정
    UPDATE membershopping SET email = 'john.doe@example.com' WHERE member_id = 1;

    -- 회원 탈퇴
    DELETE FROM membershopping WHERE member_id = 1;
    ```

11. **salgrade 테이블 복사 및 이름 변경, 삭제:**
    ```sql
    CREATE TABLE salgrade_copy1 AS SELECT * FROM salgrade;
    CREATE TABLE salgrade_copy2 AS SELECT * FROM salgrade;

    -- 이름 변경
    ALTER TABLE salgrade_copy1 RENAME TO new_salgrade;

    -- 삭제
    DROP TABLE salgrade_copy2;
    ```

## 토론 주제

1. **초기 컬럼명과 타입 지정 vs. 복사 테이블:**
   - **초기 컬럼명과 타입 지정**:
     - 장점: 데이터베이스 설계 시 정확한 요구사항 반영, 필요한 데이터 타입 및 제약 조건 설정 가능.
     - 단점: 초기 설계 단계에서 실수 발생 시 수정이 번거로울 수 있음.
   - **복사 테이블**:
     - 장점: 기존 테이블 구조 및 데이터를 그대로 복사하여 새로운 테이블 생성이 용이.
     - 단점: 불필요한 데이터 복사 가능성, 구조 변경 시 추가 작업 필요.

2. **날짜형 입력 시 사용되는 `TO_DATE()` 형식:**
   - 기본 형식: `TO_DATE('2023-05-20', 'YYYY-MM-DD')`
   - 날짜+시간: `TO_DATE('2023-05-20 15:30:00', 'YYYY-MM-DD HH24:MI:SS')`
   - 다양한 형식:
     - `TO_DATE('20-05-2023', 'DD-MM-YYYY')`
     - `TO_DATE('2023/05/20 03:30 PM', 'YYYY/MM/DD HH:MI AM')`

3. **AutoCommit의 장단점:**
   - **장점**:
     - 자동으로 커밋되어 트랜잭션 관리가 간편.
     - 실수로 커밋을 잊어버려 데이터가 손실되는 일 방지.
   - **단점**:
     - 원치 않는 데이터 변경 사항도 즉시 반영.
     - 트랜잭션 롤백이 불가능하여 데이터 무결성 문제 발생 가능.

## 내일 예습 범위 : JSP 모듈 처리, EL 태그, Java List, Generic
흥미/궁금함??
1. **JSP 모듈 처리:**
   - **include의 종류**: `<%@ include %>` (정적 include), `<jsp:include />` (동적 include)
   - **장단점**:
     - 정적 include: 컴파일 시 포함되어 성능이 좋음, 변경 사항 반영 위해 재컴파일 필요.
     - 동적 include: 요청 시마다 포함되어 최신 정보 반영, 성능은 다소 떨어질 수 있음.

2. **EL 태그:**
   - **장점**: 간결한 표현, 코드 가독성 향상, 보안 강화 (XSS 방지).
   - **사용 형식**: `${expression}`

3. **Java List, Generic:**
   - **이유**: 타입 안전성 보장, 런타임 에러 감소.
   - **차이점**: Generic 사용 시 컴파일 타임에 타입 체크, 사용하지 않을 경우 런타임 에러 가능성 증가.

4. **데이터베이스 연동(java)**:
   - **핵심 속성**: 드라이버 클래스, DB URL, 사용자 이름, 비밀번호.





# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날결석, 9:00 지각/조퇴사유), 
   수업시간/프로젝트시간 수업시간 준수 및 교실밖 이동 자제 
   지각/결석시 사전에 연락 했는지? 
2. 수업에 긍정적인 마음으로 집중하였는가?
   1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가?
   2) 수업시간에 효과적으로 집중을 하였는가?
3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.
4. 과제 진행 % 표기(5:20분에 따로 조별로 진행-어려웠던 부분포함)
   1조 
   홍길동  @@ % 진행 - 테이블구조변경 어려움
   
# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요.

# 수업관련 건의사항이 있으면 전달 부탁드립니다.



 --%>
</body>
</html>