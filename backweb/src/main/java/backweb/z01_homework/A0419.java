package backweb.z01_homework;

public class A0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
### 실습형 연습문제

#### 1. 자바의 기본 데이터 유형
1. `int` 유형의 변수 `numA`에 256을 할당하고 출력하세요.
2. `byte` 유형으로 `numB`를 선언하고 최대값을 할당한 후 출력하세요.
3. `char` 유형의 변수 `charC`에 'Z'를 할당하고 해당 문자의 유니코드 값을 출력하세요.
4. `long` 유형의 변수 `longD`에 5000000000L을 할당하고 출력하세요.
5. **초콜릿 공장 문제**: 앨리스는 초콜릿 공장에서 일합니다. 오늘 그녀는 특별한 초콜릿 상자 256개를 만들어야 합니다. 자바에서 `byte` 유형을 사용하여 만들어야 하는 초콜릿 상자 수를 저장하고 출력하세요. 초콜릿 수가 `byte`의 범위를 벗어나면 어떻게 될까요?
6. **해적의 보물 지도 문제**: 해적 캡틴 잭은 보물 지도에 ‘X’ 표시가 65535개 있다고 말합니다. 자바의 `char` 유형을 사용하여 'X' 표시의 개수를 저장하고 출력하세요. 이 데이터 유형이 적합한 이유는 무엇일까요?
7. **우주선 연료 계산 문제**: 지구에서 화성까지 가는 우주선이 있습니다. 연료 탱크의 용량은 정확히 3147483647 리터입니다. `int` 유형으로 이 값을 저장할 수 없다면 어떤 자바 데이터 유형을 사용해야 할까요? 적절한 유형을 사용하여 변수를 선언하고 초기화하세요.
8. **온라인 게임 포인트 문제**: 미아는 온라인 게임에서 점수를 계산하고 있습니다. 그녀의 현재 점수는 실수로 나타낼 수 있는데, 3.14점이 추가로 주어졌습니다. 이 점수를 `double` 유형의 변수에 저장하고, 출력하는 자바 코드를 작성하세요.
9. **디지털 시계 문제**: 디지털 시계는 초를 계산할 때 `boolean` 유형을 사용하여 "분이 30분 이상인지 아닌지"를 표시합니다. 만약 현재 분이 45분이라면 이 정보를 `boolean`으로 어떻게 표현할 수 있을까요? 관련 코드를 작성하세요.
10. **신비한 행성의 온도 문제**: 새로 발견된 행성의 평균 온도는 -189.6도입니다. 이 온도를 저장하기 위해 적합한 자바 데이터 유형은 무엇일까요? 해당 유형으로 변수를 선언하고 초기화한 다음, 출력하는 코드를 작성하세요.

#### 2. 숫자형 문자열 변환
11. 문자열 "12345"를 정수형으로 변환하고, 변환된 값에 100을 더한 결과를 출력하세요.
12. 문자열 "56.78"를 실수형으로 변환하고, 변환된 값에 1.22를 더한 결과를 출력하세요.
13. 문자열 "999"를 정수형으로 변환하고, 그 값을 3으로 나눈 몫을 출력하세요.
14. 문자열 "0.333"을 실수형으로 변환하고, 그 값에서 0.667을 뺀 결과를 출력하세요.
15. 문자열 "2048"을 정수형으로 변환하고, 이를 2로 나눈 결과를 출력하세요.

#### 3. 연산자 활용
16. 정수형 변수 `x`와 `y`에 각각 10, 3을 할당하고, `x`를 `y`로 나눈 몫을 출력하세요.
17. 같은 변수를 사용하여 `x`에 1.0을 곱한 후 `y`로 나눈 결과를 실수형으로 출력하세요.
18. `x`를 `double` 유형으로 캐스팅하여 `y`로 나눈 결과를 출력하세요.
19. 정수 `100`을 실수 `30.0`으로 나눈 결과를 출력하세요.
20. 문자열로 주어진 "150"을 정수형으로 변환하고, 이를 7로 나눈 몫과 나머지를 출력하세요.

### 토론 주제

1. 자동 형 변환과 강제 형 변환 중 어떤 상황에서 각각을 사용하면 좋을지 토론하세요.
2. 자바에서 실수형 연산 시 발생할 수 있는 오류 사례를 공유하고, 이를 어떻게 해결할 수 있는지 토론하세요.
3. `int`와 `long`, `float`와 `double`의 차이점과 실제 사용 시 고려해야 할 점에 대해 토론하세요.
4. 자바에서는 왜 숫자형 문자열을 변환할 때 `Integer.parseInt()`나 `Double.parseDouble()`와 같은 메서드를 사용해야 하는지 토론하세요.
5. 자바의 기본 데이터 유형을 사용하여 메모리 효율성을 최대화하는 방법에 대해 토론하세요.

# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날, 9:00 지각/조퇴사유), 수업시간 이동 및 준수
	지각/결석시 사전에 연락 했는지? 
2. 수업에 긍정적인 마음으로 집중하였는가?
   	1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가?
   	2) 수업시간에 효과적으로 집중을 하였는가?
3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.
# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요.
# 수업관련 건의사항이 있으면 전달 부탁드립니다.


# 진행순서
1. 점검사항(~16:05)전달
2. 토론과제/개인과제 진행(~17:30)전달
   개인과제는 개별로 전달
3. 조별프로젝트형 과제 진행
  - 조별 일일 진행 내용 전달(~17:00) 
 */
	}

}
