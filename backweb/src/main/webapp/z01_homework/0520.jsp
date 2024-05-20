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