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

### 자바의 기본 데이터 유형 문제 해답

#### 1. `int` 유형의 변수 `numA`에 256을 할당하고 출력하세요.
```java
int numA = 256;
System.out.println(numA);
```

#### 2. `byte` 유형으로 `numB`를 선언하고 최대값을 할당한 후 출력하세요.
```java
byte numB = 127;
System.out.println(numB);
```

#### 3. `char` 유형의 변수 `charC`에 'Z'를 할당하고 해당 문자의 유니코드 값을 출력하세요.
```java
char charC = 'Z';
System.out.println((int)charC);
```

#### 4. `long` 유형의 변수 `longD`에 5000000000L을 할당하고 출력하세요.
```java
long longD = 5000000000L;
System.out.println(longD);
```

#### 5. **초콜릿 공장 문제**
```java
byte chocolateBoxes = 127; // 최대 byte 값 할당
System.out.println(chocolateBoxes);
// 초과 값 할당 시도는 컴파일 에러를 유발하거나 런타임에서 오버플로우 발생
```

#### 6. **해적의 보물 지도 문제**
```java
char treasureMarks = 65535; // char의 최대값
System.out.println(treasureMarks);
// char는 0에서 65535까지의 유니코드 문자를 표현할 수 있어 적합
```

#### 7. **우주선 연료 계산 문제**
```java
long fuelCapacity = 3147483647L;
System.out.println(fuelCapacity);
// int의 범위를 초과하기 때문에 long 사용
```

#### 8. **온라인 게임 포인트 문제**
```java
double currentScore = 3.14;
System.out.println(currentScore);
```

#### 9. **디지털 시계 문제**
```java
boolean isOver30Minutes = true; // 45분은 30분을 초과
System.out.println(isOver30Minutes);
```

#### 10. **신비한 행성의 온도 문제**
```java
double planetTemperature = -189.6;
System.out.println(planetTemperature);
// 실수이므로 double이 적합
```

### 숫자형 문자열 변환 문제 해답

#### 11. 문자열 "12345"를 정수형으로 변환하고, 변환된 값에 100을 더한 결과를 출력하세요.
```java
int num = Integer.parseInt("12345") + 100;
System.out.println(num);
```

#### 12. 문자열 "56.78"를 실수형으로 변환하고, 변환된 값에 1.22를 더한 결과를 출력하세요.
```java
double num = Double.parseDouble("56.78") + 1.22;
System.out.println(num);
```

#### 13. 문자열 "999"를 정수형으로 변환하고, 그 값을 3으로 나눈 몫을 출력하세요.
```java
int result = Integer.parseInt("999") / 3;
System.out.println(result);
```

#### 14. 문자열 "0.333"을 실수형으로 변환하고, 그 값에서 0.667을 뺀 결과를 출력하세요.
```java
double difference = Double.parseDouble("0.333") - 0.667;
System.out.println(difference);
```

#### 15. 문자열 "2048"을 정수형으로 변환하고, 이를 2로 나눈 결과를 출력하세요.
```java
int half = Integer.parseInt("2048") / 2;
System.out.println(half);
```

### 연산자 활용 문제 해답

#### 16. 정수형 변수 `x`와 `y`에 각각 10, 3을 할당하고, `x`를 `y`로 나눈 몫을 출력하세요.
```java
int x = 10, y = 3;
System.out.println(x / y);
```

#### 17. 같은 변수를 사용하여 `x`에 1.0을 곱한 후

 `y`로 나눈 결과를 실수형으로 출력하세요.
```java
System.out.println(x * 1.0 / y);
```

#### 18. `x`를 `double` 유형으로 캐스팅하여 `y`로 나눈 결과를 출력하세요.
```java
System.out.println((double)x / y);
```

#### 19. 정수 `100`을 실수 `30.0`으로 나눈 결과를 출력하세요.
```java
System.out.println(100 / 30.0);
```

#### 20. 문자열로 주어진 "150"을 정수형으로 변환하고, 이를 7로 나눈 몫과 나머지를 출력하세요.
```java
int value = Integer.parseInt("150");
System.out.println("몫: " + value / 7);
System.out.println("나머지: " + value % 7);
```
### 토론 주제에 대한 설명 및 응답

#### 1. 자동 형 변환과 강제 형 변환 중 어떤 상황에서 각각을 사용하면 좋을지 토론하세요.
- **자동 형 변환 (Promotion)**: 자동 형 변환은 작은 크기의 데이터 타입에서 큰 크기의 데이터 타입으로 변환될 때 발생합니다. 예를 들어, `int`에서 `double`로 변환하는 경우. 이는 데이터 손실이 없을 때 자동으로 발생합니다. 이를 사용하는 이유는 연산 중 형 변환이 자연스럽게 이루어져야 할 때 편리함을 제공하기 때문입니다.
- **강제 형 변환 (Casting)**: 강제 형 변환은 큰 크기의 데이터 타입을 작은 크기의 데이터 타입으로 명시적으로 변환할 때 사용합니다. 예를 들어, `double`을 `int`로 변환할 때. 이 경우 데이터 손실이 발생할 수 있으며, 프로그래머가 의도적으로 타입을 변환할 필요가 있을 때 사용합니다.

#### 2. 자바에서 실수형 연산 시 발생할 수 있는 오류 사례를 공유하고, 이를 어떻게 해결할 수 있는지 토론하세요.
- **실수 연산의 부정확성**: 자바에서 실수형(`float`, `double`) 연산은 부동소수점 연산을 사용하기 때문에, 정밀도에 한계가 있습니다. 예를 들어, `0.1 + 0.2`가 정확히 `0.3`이 되지 않는 문제가 있습니다.
- **해결 방법**: 금융 계산과 같이 정밀한 연산이 필요한 경우, `BigDecimal` 클래스를 사용하는 것이 좋습니다. 이 클래스는 소수점 아래의 정밀도를 더 정확하게 제어할 수 있도록 설계되었습니다.

#### 3. `int`와 `long`, `float`와 `double`의 차이점과 실제 사용 시 고려해야 할 점에 대해 토론하세요.
- **`int` vs `long`**: `int`는 -2,147,483,648에서 2,147,483,647 범위의 정수를 저장할 수 있으며, `long`은 훨씬 더 큰 범위(-9,223,372,036,854,775,808에서 9,223,372,036,854,775,807)를 커버합니다. 큰 정수를 다루어야 할 때 `long`을 사용해야 합니다.
- **`float` vs `double`**: `float`는 4바이트를 사용하여 실수를 저장하며, `double`은 8바이트를 사용합니다. `double`은 `float`보다 더 넓은 범위와 더 높은 정밀도를 제공합니다. 일반적인 실수 계산에서는 `double`이 권장됩니다.

#### 4. 자바에서는 왜 숫자형 문자열을 변환할 때 `Integer.parseInt()`나 `Double.parseDouble()`와 같은 메서드를 사용해야 하는지 토론하세요.
- 이러한 메서드를 사용하는 이유는 문자열 형식의 숫자를 해당 데이터 유형의 실제 숫자 값으로 변환하기 위함입니다. 자바에서는 타입이 엄격하게 관리되므로, 문자열에서 숫자로의 변환은 명시적으로 수행되어야 하며, 이를 위해 이러한 메서드가 제공됩니다. 이를 통해 데이터 처리, 수학 연산 등에서 타입 호환성을 유지할 수 있습니다.

#### 5. 자바의

 기본 데이터 유형을 사용하여 메모리 효율성을 최대화하는 방법에 대해 토론하세요.
- **적절한 타입 선택**: 필요한 데이터의 크기와 범위에 맞는 가장 작은 데이터 유형을 선택함으로써 메모리 사용을 최적화할 수 있습니다. 예를 들어, -128에서 127 사이의 정수만 필요한 경우 `byte`를 사용하는 것이 `int`보다 메모리 효율성이 높습니다.
- **Wrapper 클래스 사용 최소화**: `Integer`, `Double`과 같은 Wrapper 클래스는 기본 데이터 유형보다 더 많은 메모리를 사용합니다. 기본 유형을 사용할 수 있는 상황에서는 Wrapper 클래스의 사용을 최소화하여 메모리 사용을 줄일 수 있습니다.

이러한 토론 주제들은 프로그래밍에 있어 깊이 있는 이해를 필요로 하며, 다양한 상황에서의 최적의 접근 방법을 모색하게 합니다.

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
1. 점검사항(~16:00)전달
2. 토론과제/개인과제 진행(~17:30)전달
   개인과제는 개별로 전달(1차로 전달 후)
3. 조별프로젝트형 과제 진행
  - 조별 일일 진행 내용 전달(~17:00) 
 */
		
	}

}
