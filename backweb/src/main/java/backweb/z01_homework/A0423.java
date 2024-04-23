package backweb.z01_homework;

public class A0423 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
#### 1. 기본 switch 문제
다음 switch 문의 기본 형식을 완성하여, 입력된 숫자에 따라 "하나", "둘", "셋", 그 외는 "기타"를 출력하는 코드를 작성하시오.

```java
int number = 2;
switch (number) {
    // 코드 완성
}
```

#### 2. for 반복문 문제
1부터 20까지의 숫자 중에서 홀수만 출력하는 for 문을 작성하시오.

#### 3. while 반복문 문제
while 문을 사용하여 숫자 100부터 1까지 역순으로 출력하는 프로그램을 작성하시오.

#### 4. do-while 문제
do-while 문을 사용하여 사용자로부터 입력받은 수가 0이 아닐 때까지 계속 입력 받고, 0이 입력되면 반복을 종료하는 프로그램을 작성하시오.

#### 5. continue 문제
1부터 50까지 숫자를 출력하는데, 5의 배수는 출력하지 않도록 continue 문을 사용하여 프로그램을 작성하시오.

#### 6. break 문제
1부터 시작하여 누적된 합이 100을 초과할 때 그 숫자를 출력하고 반복을 중단하는 프로그램을 작성하시오.

#### 7. 중첩 반복문 문제 (구구단)
2단부터 9단까지 구구단을 출력하는 중첩 for 문을 작성하시오.

#### 8. 조건문과 반복문 결합 문제
1부터 100까지의 숫자 중 7의 배수만 출력하는 프로그램을 작성하시오.

#### 9. 배열과 반복문 문제
정수 배열에 저장된 모든 요소의 합을 계산하는 for 문을 작성하시오.

#### 10. Scanner와 while 문 문제
Scanner를 사용하여 사용자로부터 문자열을 계속 입력받다가 "exit"이 입력되면 종료하는 프로그램을 작성하시오.

#### 11. 배열과 for-each 문제
문자열 배열에 저장된 각 요소를 for-each 문을 사용하여 출력하는 프로그램을 작성하시오.

#### 12. 배열 초기화와 접근 문제
정수형 배열을 선언하고 {1, 2, 3, 4, 5}로 초기화한 후, 모든 요소를 출력하는 코드를 작성하시오.

#### 13. 다차원 배열 문제
5x5 정수형 2차원 배열을 선언하고, 모든 요소를 출력하는 중첩 for 문을 작성하시오.

#### 14. 조건부 출력 문제
정수 배열의 각 요소를 출력할 때, 요소 값이 10 이상인 경우에만 출력하는 프로그램을 작성하시오.

#### 15. 인덱스와 요소 문제
정수 배열에서 최대값과 그 위치(인덱스)를 찾아 출력하는 프로그램을 작성하시오.

#### 16. 문자열 배열 처리 문제
문자열 배열 {"apple", "banana", "cherry"}에서 "banana" 문자열이 있는 인덱스를 찾아 출력하는 프로그램을 작성하시오.

#### 17. 배열의 동적 할당 문제
사용자로부터 배열의 크기를 입력받아, 그 크기만큼 정수 배열을 동적으로 생성하고, 각 요소에 값을 할당한 후 전체를 출력하는 프로그램을 작성하시오.

#### 18. ArrayList와 반복문 문제
ArrayList에 정수를 저장하고, 저장된 모든 정수를 출력하는 프로그램을 작성하시오.

#### 19. Stack과 Heap 문제
Java에서 stack과 heap 메모리를 설명할 수 있는 간단한 코드 예제를 작성하시오.

#### 20. API 객체 사용 문제
Java의 Math 클래스를 사용하여 0.0부터 1.0 사이의 랜덤 숫자를 생성하고 출력하는 프로그램을 작성하시오.

아래는 Java 프로그래밍 언어를 사용하여 제시된 각 문제의 해결책입니다.

### 1. 기본 switch 문제
```java
int number = 2;
switch (number) {
    case 1:
        System.out.println("하나");
        break;
    case 2:
        System.out.println("둘");
        break;
    case 3:
        System.out.println("셋");
        break;
    default:
        System.out.println("기타");
}
```

### 2. for 반복문 문제
```java
for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0) {
        System.out.println(i);
    }
}
```

### 3. while 반복문 문제
```java
int num = 100;
while (num >= 1) {
    System.out.println(num);
    num--;
}
```

### 4. do-while 문제
```java
Scanner scanner = new Scanner(System.in);
int input;
do {
    System.out.println("수를 입력하세요 (0 입력시 종료):");
    input = scanner.nextInt();
} while (input != 0);
scanner.close();
```

### 5. continue 문제
```java
for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0) continue;
    System.out.println(i);
}
```

### 6. break 문제
```java
int sum = 0;
for (int i = 1; ; i++) {
    sum += i;
    if (sum > 100) {
        System.out.println(i);
        break;
    }
}
```

### 7. 중첩 반복문 문제 (구구단)
```java
for (int i = 2; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
        System.out.println(i + " * " + j + " = " + (i * j));
    }
}
```

### 8. 조건문과 반복문 결합 문제
```java
for (int i = 1; i <= 100; i++) {
    if (i % 7 == 0) {
        System.out.println(i);
    }
}
```

### 9. 배열과 반복문 문제
```java
int[] array = {1, 2, 3, 4, 5};
int sum = 0;
for (int num : array) {
    sum += num;
}
System.out.println("합계: " + sum);
```

### 10. Scanner와 while 문 문제
```java
Scanner scanner = new Scanner(System.in);
String input;
while (true) {
    System.out.println("문자열을 입력하세요 ('exit' 입력시 종료):");
    input = scanner.nextLine();
    if (input.equals("exit")) break;
}
scanner.close();
```

### 11. 배열과 for-each 문제
```java
String[] array = {"Hello", "World", "Java"};
for (String item : array) {
    System.out.println(item);
}
```

### 12. 배열 초기화와 접근 문제
```java
int[] array = {1, 2, 3, 4, 5};
for (int num : array) {
    System.out.println(num);
}
```

### 13. 다차원 배열 문제
```java
int[][] matrix = new int[5][5];
for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
        matrix[i][j] = i * 5 + j + 1;
        System.out.print(matrix[i][j] + " ");
    }
    System.out.println();
}
```

### 14. 조건부 출력 문제
```java
int[] array = {5, 10, 15, 20, 25};
for (int num : array) {
    if (num >= 10) {
        System.out.println(num);
    }
}
```

### 15. 인덱스와 요소 문제
```java
int[] array = {5, 20, 35, 10, 15};
int max = array[0], index = 0;
for (int i = 1; i < array.length; i++) {
    if (array[i] > max) {
        max = array[i];
        index = i;
    }
}
System.out.println("최대값: " + max + ", 위치

: " + index);
```

### 16. 문자열 배열 처리 문제
```java
String[] fruits = {"apple", "banana", "cherry"};
for (int i = 0; i < fruits.length; i++) {
    if (fruits[i].equals("banana")) {
        System.out.println("바나나의 인덱스: " + i);
        break;
    }
}
```

### 17. 배열의 동적 할당 문제
```java
Scanner scanner = new Scanner(System.in);
System.out.println("배열의 크기를 입력하세요:");
int size = scanner.nextInt();
int[] array = new int[size];

for (int i = 0; i < array.length; i++) {
    System.out.println("배열의 " + i + "번째 요소의 값을 입력하세요:");
    array[i] = scanner.nextInt();
}

for (int num : array) {
    System.out.println(num);
}
scanner.close();
```

### 18. ArrayList와 반복문 문제
```java
import java.util.ArrayList;

ArrayList<Integer> list = new ArrayList<>();
list.add(1);
list.add(2);
list.add(3);

for (int num : list) {
    System.out.println(num);
}
```

### 19. Stack과 Heap 문제
```java
public class MemoryExample {
    public static void main(String[] args) {
        int localValue = 5; // 스택 메모리에 저장됨
        int[] array = new int[10]; // 힙 메모리에 할당, 스택 메모리에는 참조만 저장
    }
}
```

### 20. API 객체 사용 문제
```java
double randomValue = Math.random();
System.out.println("랜덤 숫자: " + randomValue);
```

이러한 코드들은 각각의 문제 상황에 맞춰 기본적인 Java 프로그래밍 문법을 활용하여 해결 방법을 제시합니다.

아래는 토론과제에 대한 깊이 있는 설명과 토론 포인트를 제공합니다. 이를 통해 토론을 준비하거나 토론을 진행하는 데 도움이 될 것입니다.

### 1. 배열과 ArrayList의 차이점 및 각각의 사용 시나리오

**배열(Array)**
- 배열은 고정된 크기를 가지며, 선언 시 크기를 명시해야 합니다. 배열의 크기는 프로그램 실행 중 변경할 수 없습니다.
- 기본 데이터 타입(예: int, double) 또는 객체에 대한 참조를 저장할 수 있으며, 메모리에서 연속적인 공간을 차지합니다.
- 배열은 인덱스를 통한 빠른 접근이 가능하며, 이는 O(1)의 접근 시간을 의미합니다.

**ArrayList**
- ArrayList는 크기가 가변적이며, 필요에 따라 자동으로 크기가 조정됩니다.
- ArrayList는 객체 참조만을 저장할 수 있으며, 기본 데이터 타입은 wrapper 클래스(예: Integer, Double)를 통해 저장해야 합니다.
- ArrayList는 내부적으로 배열을 사용하지만, API를 통해 사용자는 크기 조정과 관련된 복잡성을 신경 쓰지 않아도 됩니다.
- ArrayList의 요소 접근은 배열과 마찬가지로 O(1)의 시간 복잡도를 가집니다. 그러나 실제 메모리 크기 조정이 발생할 경우, 추가 또는 삭제 작업에서 더 많은 시간이 소요될 수 있습니다.

**사용 시나리오**
- 배열은 크기가 변하지 않고, 타입이 고정된 경우에 적합합니다. 예를 들어, RGB 값을 저장하는 색상 배열 등이 있습니다.
- ArrayList는 데이터의 양이 변동될 수 있는 경우에 적합합니다. 예를 들어, 사용자

 입력이나 동적인 데이터 수집과 같은 상황에서 유용하며, 요소의 추가와 제거가 빈번히 발생하는 경우에 특히 적합합니다.

### 2. 중첩 반복문의 효율성

**중첩 반복문**
- 중첩 반복문은 하나의 반복문 내에 다른 반복문이 포함되어 있는 구조입니다. 이는 다차원 배열 처리, 행렬 연산, 데이터 정렬 등에 널리 사용됩니다.
- 중첩 반복문의 시간 복잡도는 내부 반복문과 외부 반복문의 반복 횟수의 곱으로 결정됩니다. 예를 들어, 각각 n번 반복하는 두 개의 반복문이 중첩되어 있으면, 전체 연산은 O(n²)의 시간 복잡도를 가집니다.

**효율성 토론**
- 중첩 반복문은 효율적인 데이터 처리를 위해 필요할 수 있지만, 효율성에 영향을 줄 수 있는 주요 요인입니다. 중첩 깊이가 깊어질수록 처리 시간은 기하급수적으로 증가할 수 있습니다.
- 알고리즘 설계 시 중첩 반복문의 사용은 가능한 피하거나 최소화하는 것이 좋으며, 대안으로 재귀 함수, 분할 정복 알고리즘, 동적 프로그래밍 등을 고려할 수 있습니다.

### 3. Java의 메모리 관리 (특히 stack과 heap의 사용)

**Stack 메모리**
- 함수 호출과 관련된 로컬 변수, 매개변수 등이 저장됩니다.
- 메모리 할당과 해제가 자동으로 이루어지며, Last In First Out(LIFO) 방식으로 작동합니다.
- 스택 메모리는 제한적인 크기를 가지며, 스택 오버플로우가 발생할 수 있습니다.

**Heap 메모리**
- 동적으로 할당되는 객체와 배열이 저장됩니다.
- Java에서는 가비지 컬렉터에 의해 관리되며, 사용하지 않는 객체를 자동으로 정리합니다.
- 힙은 스택에 비해 상대적으로 큰 메모리 영역을 사용하며, 메모리 누수가 발생할 수 있습니다.

**메모리 관리 토론**
- Java는 개발자가 메모리를 수동으로 관리할 필요가 없도록 설계되었습니다. 그러나 이로 인해 발생할 수 있는 메모리 누수와 가비지 컬렉션의 비효율성을 이해하는 것이 중요합니다.
- 효율적인 메모리 사용을 위해 적절한 객체 크기, 생명 주기, 스코프 관리가 필요합니다.

이 토론 주제들은 프로그래밍 스킬을 넘어서 시스템 설계와 효율적인 코드 작성에 대한 이해를 높이는 데 중요합니다. 각 주제에 대해 추가적인 예시나 실제 적용 사례를 논의함으로써 더 심도 있는 토론이 가능할 것입니다.


### 토론할 문제

1. 배열과 ArrayList의 차이점 및 각각의 사용 시나리오에 대해 토론하시오.
2. 중첩 반복문의 효율성에 대해 토론하시오.
3. Java의 메모리 관리(특히 stack과 heap의 사용)에 대해 토론하시오.


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
1. 점검사항(~17:00)전달
2. 토론과제/개인과제 진행(~17:30)전달
   개인과제는 개별로 전달(1차로 전달 후)
3. 조별프로젝트형 과제 진행
  - 조별 일일 진행 내용 전달(~17:30)  
 */
	}

}
