package backweb.z01_homework;

public class A0430 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
### 1. 간단한 계산기 클래스
- 클래스 이름: `SimpleCalculator`
- 필드: `value` (실수형)
- 생성자: 초기값을 `value`로 설정
- 메서드: `add(double num)`, `subtract(double num)`, `multiply(double num)`, `divide(double num)`
- 각 메서드는 주어진 숫자를 현재 값에 더하거나 빼거나 곱하거나 나누는 기능을 수행

### 2. 온도 변환기 클래스
- 클래스 이름: `TemperatureConverter`
- 메서드: `celsiusToFahrenheit(double celsius)`, `fahrenheitToCelsius(double fahrenheit)`
- 각 메서드는 섭씨를 화씨로, 화씨를 섭씨로 변환

### 3. 직원 관리 시스템
- 클래스 이름: `Employee`
- 필드: `name` (문자열), `salary` (실수형)
- 생성자: `name`과 `salary`를 초기화
- 메서드: `raiseSalary(double percentage)` - 급여 인상률을 적용

### 4. 간단한 은행 계좌 클래스
- 클래스 이름: `BankAccount`
- 필드: `accountNumber` (문자열), `balance` (실수형)
- 생성자: `accountNumber`와 초기 `balance`를 설정
- 메서드: `deposit(double amount)`, `withdraw(double amount)`

### 5. 자동차 관리 시스템
- 클래스 이름: `Car`
- 필드: `make` (자동차 제조사), `model` (모델), `year` (연식)
- 생성자: 모든 필드를 초기화
- 메서드: `updateModel(String model)` - 모델 변경

### 6. 도서관 클래스
- 클래스 이름: `LibraryBook`
- 필드: `title` (책 제목), `author` (저자), `isAvailable` (대출 가능 여부, 불리언)
- 생성자: 모든 필드를 초기화
- 메서드: `borrowBook()`, `returnBook()` - 책의 대출 및 반납 상태 관리

### 7. 시간 관리 클래스
- 클래스 이름: `Time`
- 필드: `hours`, `minutes`, `seconds` (정수형)
- 생성자: 모든 시간을 초기화
- 메서드: `addSeconds(int sec)`, `addMinutes(int min)`, `addHours(int hours)`

### 8. 피자 주문 시스템
- 클래스 이름: `PizzaOrder`
- 필드: `toppings` (문자열 배열), `basePrice` (기본 가격, 실수형)
- 생성자: `basePrice` 설정
- 메서드: `addTopping(String topping)`, `calculateTotalPrice()` - 토핑 추가 및 전체 가격 계산

### 9. 비행기 좌석 예약 시스템
- 클래스 이름: `AirplaneSeat`
- 필드: `seatNumber` (좌석 번호), `isOccupied` (점유 상태, 불리언)
- 생성자: 좌석 번호 설정
- 메서드: `reserveSeat()`, `cancelReservation()`

### 10. 운동 선수 정보 관리
- 클래스 이름: `Athlete`
- 필드: `name`, `sport`, `age` (나이)
- 생성자: 모든 필드를 초기화
- 메서드: `updateAge(int newAge)` - 나이 변경

### 개념 문제

**문제 1:** 자바에서 클래스나 멤버변수, 메서드의 접근 제한을 위해 사용되는 네 가지 주요 접근 제어자(access modifiers)와 각각의 의미를 설명하세요.

**문제 2:** `private` 접근 제어자의 특성과 사용하는 이유를 설명하세요.

**문제 3:** `default` 접근 제어자가 클래스의 멤버(변수, 메서드)에 적용되었을 때의 접근 가능 범위를 설명하세요.

### 4지선다 문제

**문제 1**
- 클래스의 멤버에 대해 가장 제한적인 접근을 허용하는 접근 제어자는 무엇입니까?
  A) `public`
  B) `private`
  C) `protected`
  D) `default`

**문제 2**
- 어떤 접근 제어자를 사용하면 같은 패키지 내의 다른 클래스에서도 접근할 수 있지만 다른 패키지에서는 접근할 수 없습니까?
  A) `public`
  B) `private`
  C) `protected`
  D) `default`

**문제 3**
- 상속받은 클래스에서 부모 클래스의 멤버에 접근할 수 있게 허용하는 접근 제어자는 무엇입니까?
  A) `public`
  B) `private`
  C) `protected`
  D) `default`

### 토론할 과제

**문제 1**
- `public`과 `private` 접근 제어자의 사용을 균형 있게 결정하는 방법에 대해 토론하세요. 이 두 접근 제어자의 사용이 객체 지향 프로그래밍의 캡슐화 원칙에 어떻게 기여하는지 설명하세요.

**문제 2**
- `default` 접근 제어자(패키지 프라이빗)가 유용한 상황을 토론하고, `public`이나 `private`, `protected`와 비교하여 그 장점을 설명하세요.

**문제 3**
- 접근 제어자를 사용하여 API를 디자인할 때의 고려 사항에 대해 토론하세요. 특히, 외부에 공개되는 클래스와 내부에서만 사용되는 클래스의 접근 제어를 어떻게 결정할지에 대해 논의하세요.


### 자바 클래스 예시 풀이

#### 1. 간단한 계산기 클래스 (`SimpleCalculator`)
```java
public class SimpleCalculator {
    private double value;

    public SimpleCalculator(double initialValue) {
        this.value = initialValue;
    }

    public void add(double num) {
        value += num;
    }

    public void subtract(double num) {
        value -= num;
    }

    public void multiply(double num) {
        value *= num;
    }

    public void divide(double num) {
        if (num != 0) {
            value /= num;
        } else {
            System.out.println("Cannot divide by zero.");
        }
    }

    public double getValue() {
        return value;
    }
}
```

#### 2. 온도 변환기 클래스 (`TemperatureConverter`)
```java
public class TemperatureConverter {
    public static double celsiusToFahrenheit(double celsius) {
        return (celsius * 9/5) + 32;
    }

    public static double fahrenheitToCelsius(double fahrenheit) {
        return (fahrenheit - 32) * 5/9;
    }
}
```

#### 3. 직원 관리 시스템 (`Employee`)
```java
public class Employee {
    private String name;
    private double salary;

    public Employee(String name, double salary) {
        this.name = name;
        this.salary = salary;
    }

    public void raiseSalary(double percentage) {
        salary += salary * percentage / 100;
    }

    public String getName() {
        return name;
    }

    public double getSalary() {
        return salary;
    }
}
```

#### 4. 간단한 은행 계좌 클래스 (`BankAccount`)
```java
public class BankAccount {
    private String accountNumber;
    private double balance;

    public BankAccount(String accountNumber, double initialBalance) {
        this.accountNumber = accountNumber;
        this.balance = initialBalance;
    }

    public void deposit(double amount) {
        balance += amount;
    }

    public void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
        } else {
            System.out.println("Insufficient funds.");
        }
    }

    public double getBalance() {
        return balance;
    }
}
```

#### 5. 자동차 관리 시스템 (`Car`)
```java
public class Car {
    private String make;
    private String model;
    private int year;

    public Car(String make, String model, int year) {
        this.make = make;
        this.model = model;
        this.year = year;
    }

    public void updateModel(String model) {
        this.model = model;
    }
}
```

### 개념 문제 풀이

**문제 1:** 자바에서 네 가지 주요 접근 제어자는 `public`, `private`, `protected`, `default` (아무 접근 제어자를 명시하지 않은 경우)입니다. `public`은 모든 클래스에서 접근 가능하며, `private`은 해당 클래스 내에서만 접근 가능합니다. `protected`는 같은 패키지 내부 또는 상속받은 클래스에서 접근 가능합니다. `default`는 동일 패키지 내에서만 접근 가능합니다.

**문제 2:** `private` 접근 제어자는 멤버변수나 메서드를 클래스 외부에서 접근하지 못하게 하여, 객체의 캡슐화와 정보 은닉을 강화합니다. 이는 외부에서 내부 구현을 임의로 변경하거나 예상치 못한 사용을 방지하여 객체의 무결성을 유지하는 데 도움을 줍니다.

**문제 3:** `default` 접근 제어자가 적용된 멤버는 같은 패키지 내의 클래스들에서만 접근 가능합니다. 다른 패키지에서는 접근할 수 없어, 패키지 내부에서만 사용되는 내부 클래스나 멤버의 경우 유용하게 사용됩니다.

### 4지선다 문제

**문제 1:** B) `private`
**문제 2:** D) `default`
**문제 3:** C) `protected`

### 토론할 과제

**문제 1:** `public`은 완전한 접근을 허용하고 `private`은 매우 제한적입니다. 캡슐화는 외부에서 내부 구현에 의존하지 않도록 하여 코드의 유지보수성을 높이는 원칙입니다. 클래스의 중요한 부분을 `private`로 설정하여 내부 로직을 숨기고, 사용자에게 필요한 부분만 `public` 인터페이스로 제공함으로써 캡슐화를 구현할 수 있습니다.

**문제 2:** `default` 접근 제어자는 동일 패키지 내에서만 사용될 기능에 적합하며, 패키지 외부로의 불필요한 노출을 막아줍니다. 이는 패키지 구조를 깔끔하게 유지하는 데 도움을 줍니다. `public`은 모든 곳에서 접근 가능하며, `private`은 클래스 내부만, `protected`는 상속 관계에 있는 클래스까지 접근 가능하게 합니다.

**문제 3:** API 디자인 시 접근 제어자를 사용하여 어떤 클래스나 메서드를 외부에 공개할지 결정합니다. 공개 API는 `public`으로 설정하여 안정성과 호환성을 유지하며, 내부 구현은 `private`이나 `default`로 설정하여 외부에서의 접근을 제한합니다. 이는 API를 안전하게 유지하고, 사용자가 내부 구현에 의존하지 않도록 하는 데 중요합니다.



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

*/
	}

}
