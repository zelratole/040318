package backweb.z01_homework;

public class A0429 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
### 개념 문제

**문제 1: 생성자와 메서드 오버로딩**
- 설명하세요, 생성자 오버로딩과 메서드 오버로딩의 차이점과 각각의 사용 사례를.

**문제 2: 메서드(매개변수)**
- 매개변수를 받는 메서드를 구현할 때 고려해야 할 주요 측면은 무엇인가요?

**문제 3: 생성자 + 메서드(매개변수)**
- 클래스에서 생성자와 매개변수가 있는 메서드를 동시에 사용할 때 어떤 이점이 있나요?

**문제 4: 메서드(리턴값)**
- 메서드에서 리턴값의 중요성에 대해 설명하고, 리턴 타입 없이(`void`) 사용할 때와 비교해 설명하세요.

**문제 5: 메서드(매개변수+리턴값)**
- 매개변수를 받고 리턴값을 제공하는 메서드의 설계 시 고려해야 할 사항은 무엇인지 설명하세요.

### 4지선다 문제

**문제 1**
- 메서드 오버로딩은 어떤 경우에 유용합니까?
  A) 같은 이름의 메서드에 다른 리턴 타입이 필요할 때
  B) 같은 이름의 메서드에 다양한 매개변수 옵션이 필요할 때
  C) 성능을 최적화해야 할 때
  D) 새로운 기능을 추가할 때


**문제 2**
- 생성자 오버로딩의 목적은 무엇인가요?
  A) 클래스에 여러 개의 이름을 부여하기 위해
  B) 객체 초기화 시 다양한 옵션을 제공하기 위해
  C) 객체의 소멸자를 설정하기 위해
  D) 메모리 할당을 최적화하기 위해



**문제 3**
- 다음 중 매개변수를 가진 메서드를 정의할 때 가장 중요한 것은 무엇입니까?
  A) 메서드 이름
  B) 매개변수의 수
  C) 매개변수의 타입
  D) 리턴 타입



**문제 4**
- 메서드가 값을 반환하지 않을 때 사용되는 키워드는 무엇입니까?
  A) `int`
  B) `void`
  C) `null`
  D) `return`


**문제 5**
- 매개변수와 리턴 값을 모두 가진 메서드의 예는 무엇입니까?
  A) `public void setName(String name)`
  B) `public boolean isAvailable()`
  C) `public int add(int x, int y)`
  D) `public void exit()`

### 개념 문제 풀이

**문제 1: 생성자와 메서드 오버로딩**
- **생성자 오버로딩**은 하나의 클래스에 여러 생성자를 선언하며, 각기 다른 매개변수 목록을 가집니다. 이를 통해 같은 클래스의 객체를 다양한 방법으로 초기화할 수 있습니다. 예를 들어, `Person` 클래스에서 이름만, 또는 이름과 나이, 또는 이름, 나이, 성별을 받는 세 가지 생성자를 제공할 수 있습니다.
- **메서드 오버로딩**은 동일한 메서드 이름에 대해 다른 매개변수 목록을 가진 여러 메서드를 선언하는 것입니다. 이는 같은 작업을 수행하지만, 입력 파라미터의 유형이나 수가 다를 때 유용합니다. 예를 들어, `add` 메서드를 오버로딩하여 정수 두 개를 더하는 버전과 실수 두 개를 더하는 버전을 만들 수 있습니다.

**문제 2: 메서드(매개변수)**
- 매개변수를 받는 메서드를 구현할 때 고려해야 할 주요 측면은 다음과 같습니다:
  - **매개변수의 타입**: 올바른 데이터 유형을 사용하여 에러를 방지하고 기능을 정확히 구현해야 합니다.
  - **매개변수의 수**: 너무 많은 매개변수는 메서드 사용을 복잡하게 만들 수 있으므로 필요한 최소한만 사용하는 것이 좋습니다.
  - **매개변수의 기본값**: 필요한 경우 기본값을 제공하여 메서드 사용을 간소화할 수 있습니다.

**문제 3: 생성자 + 메서드(매개변수)**
- 생성자와 매개변수가 있는 메서드를 함께 사용하면 객체의 초기 상태를 설정한 후, 객체의 상태를 변경하거나 확장할 수 있는 유연성을 제공합니다. 이를 통해 객체의 라이프사이클 동안 필요에 따라 객체의 상태를 조정할 수 있습니다.

**문제 4: 메서드(리턴값)**
- 메서드에서 리턴값은 메서드가 수행한 작업의 결과를 호출자에게 전달하는 데 중요합니다. 리턴값이 있는 메서드는 결과를 반환하여 추가 연산에 사용할 수 있게 해주며, 이는 데이터 처리 및 정보 전달에 매우 유용합니다. 반면 `void` 타입 메서드는 작업을 수행하고 특정 결과를 반환하지 않습니다. 이는 주로 상태 변경, 로깅, 출력 등의 작업에 적합합니다.

**문제 5: 메서드(매개변수+리턴값)**
- 매개변수를 받고 리턴값을 제공하는 메서드의 설계 시 고려해야 할 사항은 다음과 같습니다:
  - **명확성**: 매개변수와 리턴 타입이 명확하고 이해하기 쉬워야 합니다.
  - **타입 안전성**: 올바른 데이터 타입을 사용하여 오류 가능성을 최소화합니다.
  - **효율성**: 메서드가 효율적으로 작동하도록 설계하여 불필요한 리소스 사용을 줄입니다.
  - **예외 처리**: 잘못된 입력이나 예상치 못한 상황에서 안정적으로 동작하도록 예외 처리를 구현합니다.

### 4지선다 문제 풀이

**문제 

1**
- **정답: B** - 메서드 오버로딩은 다양한 매개변수 옵션을 제공할 필요가 있을 때 유용합니다.

**문제 2**
- **정답: B** - 생성자 오버로딩은 객체 초기화 시 다양한 옵션을 제공하는 것이 목적입니다.

**문제 3**
- **정답: C** - 매개변수의 타입은 메서드 정의에서 가장 중요한 요소 중 하나입니다.

**문제 4**
- **정답: B** - 메서드가 값을 반환하지 않을 때는 `void` 키워드를 사용합니다.

**문제 5**
- **정답: C** - 매개변수와 리턴 값을 모두 가진 메서드의 예는 두 정수의 합을 반환하는 `add(int x, int y)` 입니다.

### 토론 문제

**문제 1**
- 생성자 오버로딩은 클래스 설계에 유연성을 제공하며, 다양한 초기화 요구 사항에 맞게 객체를 구성할 수 있도록 돕습니다. 이는 개발자가 동일한 클래스에 대해 다양한 생성 시나리오를 처리할 수 있게 하여 코드의 재사용성과 유지 보수성을 향상시킵니다.

**문제 2**
- 메서드를 설계할 때 매개변수의 수와 타입을 결정하는 데는 함수의 목적, 사용 용이성, 코드의 가독성 등이 중요합니다. 너무 많은 매개변수는 메서드 사용을 복잡하게 만들 수 있으므로 최소화하는 것이 좋습니다.

**문제 3**
- 리턴 타입은 메서드가 어떻게 사용될 수 있는지를 결정합니다. 적절한 리턴 타입은 메서드의 유용성을 높이며, 반환값을 통해 추가 연산이 가능하도록 하여 프로그램의 효율성을 증가시킵니다.


### 토론 문제

**문제 1**
- 생성자 오버로딩이 클래스 설계에 어떻게 기여할 수 있는지 논의해보세요.

**문제 2**
- 메서드를 설계할 때 매개변수의 수와 타입을 결정하는 데 어떤 고려사항이 중요한가요?

**문제 3**
- 리턴 타입이 메서드의 유용성에 어떻게 영향을 미칠 수 있는지 토론해보세요.


### 생성자와 메서드 오버로딩 실습 문제
1. **문제**: `Car` 클래스에 기본 생성자와 모델명, 색상을 입력 받아 초기화하는 생성자를 작성하세요.
2. **문제**: `Rectangle` 클래스에 길이와 너비를 입력받는 생성자와 오직 너비만 입력받아 정사각형을 생성하는 생성자를 작성하세요.
3. **문제**: `Account` 클래스에 사용자 이름만 받는 생성자와 사용자 이름, 계좌 잔액을 받는 생성자를 작성하세요.

### 메서드(매개변수) 실습 문제
1. **문제**: `Calculator` 클래스에 두 정수의 합을 반환하는 `add` 메서드를 작성하세요.
2. **문제**: `Employee` 클래스에 직원의 부서를 변경하는 `changeDepartment` 메서드를 작성하세요.
3. **문제**: `Book` 클래스에 책의 출판년도를 업데이트하는 `updateYear` 메서드를 작성하세요.

### 생성자 + 메서드(매개변수) 실습 문제
1. **문제**: `Student` 클래스를 만들고, 이름과 학번을 초기화하는 생성자와 학생의 전공을 변경할 수 있는 `changeMajor` 메서드를 작성하세요.
2. **문제**: `Light` 클래스에 기본 생성자와 밝기를 설정하는 `setBrightness` 메서드를 작성하세요.
3. **문제**: `Pet` 클래스에 종류와 이름을 초기화하는 생성자와 주인의 이름을 설정하는 `setOwnerName` 메서드를 작성하세요.

### 메서드(리턴값) 실습 문제
1. **문제**: `WeatherStation` 클래스에 현재 온도를 반환하는 `getCurrentTemperature` 메서드를 작성하세요.
2. **문제**: `User` 클래스에 사용자의 로그인 상태를 확인하는 불리언 값을 반환하는 `isLoggedIn` 메서드를 작성하세요.
3. **문제**: `Inventory` 클래스에 특정 제품의 재고 수량을 반환하는 `getStockQuantity` 메서드를 작성하세요.

### 메서드(매개변수+리턴값) 실습 문제
1. **문제**: `Calculator` 클래스에 두 수를 입력 받아 더 큰 수를 반환하는 `max` 메서드를 작성하세요.
2. **문제**: `Employee` 클래스에 연봉과 성과 평가 점수를 입력받아 조정된 연봉을 계산하여 반환하는 `calculateRaise` 메서드를 작성하세요.
3. **문제**: `TravelAgency` 클래스에 여행 일정 수와 각 일정의 비용을 입력받아 총 비용을 반환하는 `calculateTotalCost` 메서드를 작성하세요.
아래는 자바 언어로 작성된 실습 문제에 대한 정답 코드입니다. 각 문제는 생성자와 메서드 오버로딩, 매개변수와 리턴값을 사용하는 메서드를 다룹니다.

### 생성자와 메서드 오버로딩

```java
// Car 클래스
class Car {
    String model;
    String color;

    // 기본 생성자
    Car() {}

    // 모델명과 색상을 초기화하는 생성자
    Car(String model, String color) {
        this.model = model;
        this.color = color;
    }
}

// Rectangle 클래스
class Rectangle {
    int length;
    int width;

    // 길이와 너비를 입력받는 생성자
    Rectangle(int length, int width) {
        this.length = length;
        this.width = width;
    }

    // 너비만 입력받아 정사각형을 생성하는 생성자
    Rectangle(int width) {
        this.width = this.length = width;
    }
}

// Account 클래스
class Account {
    String username;
    double balance;

    // 사용자 이름만 받는 생성자
    Account(String username) {
        this.username = username;
        this.balance = 0.0;
    }

    // 사용자 이름과 계좌 잔액을 받는 생성자
    Account(String username, double balance) {
        this.username = username;
        this.balance = balance;
    }
}
```

### 메서드(매개변수)

```java
// Calculator 클래스
class Calculator {
    // 두 정수의 합을 반환
    int add(int a, int b) {
        return a + b;
    }
}

// Employee 클래스
class Employee {
    String department;

    // 직원의 부서를 변경
    void changeDepartment(String newDepartment) {
        this.department = newDepartment;
    }
}

// Book 클래스
class Book {
    int yearPublished;

    // 책의 출판년도를 업데이트
    void updateYear(int newYear) {
        this.yearPublished = newYear;
    }
}
```

### 생성자 + 메서드(매개변수)

```java
// Student 클래스
class Student {
    String name;
    String studentId;
    String major;

    // 이름과 학번 초기화
    Student(String name, String studentId) {
        this.name = name;
        this.studentId = studentId;
    }

    // 학생의 전공을 변경
    void changeMajor(String newMajor) {
        this.major = newMajor;
    }
}

// Light 클래스
class Light {
    int brightness;

    // 기본 생성자
    Light() {}

    // 밝기를 설정
    void setBrightness(int brightness) {
        this.brightness = brightness;
    }
}

// Pet 클래스
class Pet {
    String type;
    String name;
    String ownerName;

    // 종류와 이름을 초기화
    Pet(String type, String name) {
        this.type = type;
        this.name = name;
    }

    // 주인의 이름을 설정
    void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }
}
```

### 메서드(리턴값)

```java
// WeatherStation 클래스
class WeatherStation {
    double currentTemperature;

    // 현재 온도 반환
    double getCurrentTemperature() {
        return this.currentTemperature;
    }
}

// User 클래스
class User {
    boolean loggedIn;

    // 사용자의 로그인 상태 확인
    boolean isLoggedIn() {
        return this.loggedIn;
    }
}

// Inventory 클래스
class Inventory {
    HashMap<String, Integer> stock;

    // 특정 제품의 재고 수량 반환
    int getStockQuantity(String product) {
        return stock.getOrDefault(product, 0);
    }
}
```

### 메서드(매개변수+리턴값)

```java
// Calculator 클래스
class Calculator {
    // 두 수를 입력 받아 더 큰 수 반환
    int max(int a, int b) {
        return (a > b) ? a : b;
    }
}

// Employee 클래스
class Employee {
    double salary;

    // 연봉과 성과 평가 점수를 입력받아 조정된 연봉 계산
    double calculateRaise(double currentSalary, double performanceScore) {
        return currentSalary * (1.0 + performanceScore / 100);
    }
}

// TravelAgency 클래스
class TravelAgency {
   

 // 여행 일정 수와 각 일정의 비용을 입력받아 총 비용 반환
    double calculateTotalCost(int[] costs) {
        double total = 0;
        for (int cost : costs) {
            total += cost;
        }
        return total;
    }
}
```

# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날결석, 9:00 지각/조퇴사유), 
   수업시간/프로젝트시간 수업시간 준수 및 교실밖 이동 자제 
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
  - 조별 일일 진행 내용 전달(~17:00)  
 * */
	}

}
