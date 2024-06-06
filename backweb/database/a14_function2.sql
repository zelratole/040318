/*
# 중첩함수
1. 함수1(함수2(컬럼/데이터))
	해당 데이터나 컬럼을 먼저 함수2를 적용한 후, 다시 함수1을 적용하게 하여,
	중첩적으로 적용하게 되는 것을 말한다.
	1) 기본 함수 기능 충분히 연습되었을 때 가능
	2) 이전에 했던 함수를 통해 처리할 수 있는 데이터를 상기
	3) 다양한 문제를 통해서 필요로 하는 중첩함수 처리..

# instr(지정한 문자열데이터|컬럼, '검색문자')
1. 특정한 문자열을 검색해서 해당 문자열의 위치를 index로 반환처리하는 함수
2. 주로 대용량의 문자열 데이터를 검색해서 해당 문자열의 첫번째 위치를 index로 표현해준다.
	없으면 0으로 나온다.
3. 주가 옵셥
	instr(데이터/컬럼, '검색문자', 시작위치, 검색된 횟수)
	
 * */
-- 중첩함수 처리
SELECT ename, lower(ename) 소문자이름, substr(ename,1,3) 사원명추출,
		lower(substr(ename,1,3)) 중첩함수처리
FROM emp;
-- instr 함수 처리
SELECT instr('sql*plus','*') sch1, -- 검색된 위치..
       instr('s*q*l*plus*s','*',3,1) sch2, -- index 3부터 시작해서 검색된 첫번째..
       instr('s*q*l*plus*s','*',3,2) sch3, -- INDEX 3부터 시작해서 검색된 두번째
       instr('s*q*l*plus*s','#',3,2) sch4  -- 해당 내용이 없을 때..
FROM dual;
--ex1) 중첩함수 : ename을 소문자로 변환 후, 해당 문자열의 크기(length)를 사원명과 함께 출력하세요.
SELECT ename, lower(ename), length(ename), LENGTH(lower(ename))
FROM emp;
--ex2) dual테이블 이용하여 KING에서 I의 위치를 가져오세요.. emp테이블에서 ename의 'A' 위치를 가져오세요.
SELECT instr('KING','I') FROM dual;
SELECT ename, instr(ename,'A') 
FROM emp;
--ex3) 직책을 검색하되 MAN이 포함 되어 있는 데이터를 검색하되 위 instr() 함수를 활용하여 
--     처리하되  사원명, 직책명, 검색된 위치를 출력하세요..
SELECT ename, job, instr(job,'MAN') 검색위치
FROM emp
WHERE instr(job,'MAN')>0;
/*
# lpad, rpad 함수
1. 고정형문자열(char()), 가변형문자열(varchar2()), 
	- 고정형문자열char :해당 문자열을 데이터의 크기를 정해지면, 해당 데이터의 최대크기 이하로 입력이 가능하지만,
		모두 다, 같은 크기로 데이터가 삽입이된다. name char(10) 로 선언했을 때,
			'A', 'himan', 'good day' 모두 다  10byte로 나머지는 공백이 입력되어 처리된다.
			즉, 메모리 공간의 낭비가 있을 수 있다. 하지만, 가져올 때, 크기가 고정되어 있어서 빠른 속도로
			로딩이 가능하다는 장점이 있다. 그래서, 주로 코드성 데이터(사번, 주민번호) 등에서 사용된다.
	- 가변형문자열varchar2 : 해당 문자열은 데이터의 크기가 정해지만, 해당 데이터의 최대크기 이하로 입력이
		가능하면, 입력된 데이터에 맞게 크기가 정해 진다. name varchar2(10)로 선언된 경우
			'A'(1byte), 'himan'(5byte), 'good day'(8byte)로 할당되어 처리된다. 효율적인 메모리
			관리가 char보다 장점으로 들 수 있다. 일반적으로 많이 활용되는 데이터 유형이다.
2. 실무에서 varchar2로 할당되어 있는 데이터를 char()로 처리해야 하는 경우 간간히 활용된다.
3. 처리내용
	문자열기준으로 10자리를 만들어서 데이터가 부족할 때 특정 문자열로 채울 때, 활용
	홍길동#######
	길동########
	lpad : left padding, rpad : right padding
4. 기본 형식
	lpad(데이터, 전체크기, 왼쪽에 덧붙일 문자열)
	rpad(데이터, 전체크기, 오른쪽에 덧붙일 문자열)			
 * */
SELECT lpad('sql', 5, '*') s1, rpad('sql',10,'#') s2
FROM dual;
-- 입력된 사원명의 최대 크기를 확인 후, 고정형으로 입력이 되지 않는 부분에 대하여 *로 추가하여 데이터를 처리..
-- 1. 사원명의 크기를 확인
SELECT length(ename)
FROM emp;
-- 2. 최대 크기 확인
SELECT max(LENGTH(ename)) mx_ename
FROM emp;
-- 3. 사원명과 최대크기 이외는 *를 오른쪽에 삽입처리
SELECT ename, rpad(ename,6,'*') 사원명
FROM emp;
-- ex) job직책의 최대크기를 확인해서 왼쪽에 '#' 삽입하여   직책명, 직책lpad   처리하여 출력하세요..
SELECT max(LENGTH(job)) mx_job
FROM emp;
SELECT job, lpad(job,9,'#') 직책lpad
FROM emp;
/*
# ltrim, rtrim, trim
1. trim은 절삭이라는 말로, 오른쪽 또는 왼쪽에 있는 특정한 문자열을 중복해서 삭제 할 때, 사용된다.
2. 위 lpad, rpad가 가변형을 고정형에 할당할 때, 사용된다면, trim은 고정형을 가변형에 할당할 때, 주로 사용된다. 
3. 주요 기능 메서드 
	1) ltrim(데이터, '반복제거할문자') : 왼쪽에 제거할 문자를 없애주는데 반복적으로 처리된다.
	2) rtrim(데이터, '반복제거할문자') : 오른쪽에 제거할 문자를 없애주는데 반복적으로 처리된다.
	3) trim('양쪽에 제거할문자' from 데이터) : 왼쪽/오른쪽 끝에 제러할 문자가 있을 때, 한번에 제거 할 때 사용된다.
**/
SELECT ltrim('*****sql****', '*') str1,
	   rtrim('*****sql****', '*') str2,
	   trim('*' FROM '*****sql****') str3
FROM dual;
-- ex) 직책(job)을 기준으로 왼쪽에 'S', 오른쪽에 'N'을 삭제하고 출력하세요..
SELECT job, ltrim(job, 'S') job1,
       rtrim(job, 'N') job2,
       rtrim(ltrim(job, 'S'), 'N') job3
FROM emp;






