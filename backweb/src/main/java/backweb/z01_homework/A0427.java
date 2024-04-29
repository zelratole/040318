package backweb.z01_homework;

public class A0427 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*


### 1. 필드 연습문제
1. 자동차 클래스 `Car`를 만들고, `color`와 `model`이라는 문자열 필드를 추가하세요.
2. 학생 클래스 `Student`를 만들고, `name`, `age`라는 필드를 추가하세요. `name`은 문자열, `age`는 정수형이어야 합니다.
3. 도서 클래스 `Book`를 만들고, `title`, `author`, `yearPublished`라는 필드를 추가하세요.
4. 은행 계좌 클래스 `BankAccount`를 만들고, `accountNumber`, `balance`라는 필드를 추가하세요. `balance`는 실수형이어야 합니다.
5. 컴퓨터 클래스 `Computer`를 만들고, `processor`, `ramCapacity`라는 필드를 추가하세요. `ramCapacity`는 정수형으로 표현합니다.

### 2. 생성자와 필드
1. `Car` 클래스에 색상과 모델을 매개변수로 받는 생성자를 추가하세요.
2. `Student` 클래스에 이름과 나이를 매개변수로 받는 생성자를 추가하고, 필드를 초기화하세요.
3. `Book` 클래스에 제목, 저자, 출판년도를 매개변수로 받는 생성자를 추가하세요.
4. `BankAccount` 클래스에 계좌번호와 초기 잔액을 매개변수로 받는 생성자를 만들고, 필드를 초기화하세요.
5. `Computer` 클래스에 프로세서 이름과 RAM 용량을 매개변수로 받는 생성자를 만들고, 이 정보로 필드를 초기화하세요.

### 3. 메서드(매개변수)
1. `Car` 클래스에 `setModel(String model)`이라는 메서드를 추가하여, 자동차의 모델을 설정할 수 있게 하세요.
2. `Student` 클래스에 `setAge(int age)`라는 메서드를 추가하여, 학생의 나이를 변경할 수 있게 하세요.
3. `Book` 클래스에 `updateYearPublished(int year)`라는 메서드를 추가하여, 출판년도를 업데이트할 수 있게 하세요.
4. `BankAccount` 클래스에 `deposit(double amount)`라는 메서드를 추가하여, 입금액을 계좌 잔액에 추가하세요.
5. `Computer` 클래스에 `upgradeRAM(int additionalRAM)`라는 메서드를 추가하여, RAM 용량을 업그레이드하세요.

### 4. 메서드(리턴값)
1. `Car` 클래스에 `getColor()`라는 메서드를 추가하여, 자동차의 색상을 반환하게 하세요.
2. `Student` 클래스에 `getName()`라는 메서드를 추가하여, 학생의 이름을 반환하세요.
3. `Book` 클래스에 `getTitle()`라는 메서드를 추가하여, 책의 제목을 반환하게 하세요.
4. `BankAccount` 클래스에 `getBalance()`라는 메서드를 추가하여, 현재 잔액을 반환하세요.
5. `Computer` 클래스에 `getProcessor()`라는 메서드를 추가하여, 컴퓨터의 프로세서 정보를 반환하세요.





### 1. 클래스와 필드 정의

```java
// 자동차 클래스
class Car {
    String color;
    String model;
}

// 학생 클래스
class Student {
    String name;
    int age;
}

// 도서 클래스
class Book {
    String title;
    String author;
    int yearPublished;
}

// 은행 계좌 클래스
class BankAccount {
    String accountNumber;
    double balance;
}

// 컴퓨터 클래스
class Computer {
    String processor;
    int ramCapacity;
}
```

### 2. 생성자 정의

```java
// 자동차 클래스
class Car {
    String color;
    String model;

    // 생성자
    Car(String color, String model) {
        this.color = color;
        this.model = model;
    }
}

// 학생 클래스
class Student {
    String name;
    int age;

    // 생성자
    Student(String name, int age) {
        this.name = name;
        this.age = age;
    }
}

// 도서 클래스
class Book {
    String title;
    String author;
    int yearPublished;

    // 생성자
    Book(String title, String author, int yearPublished) {
        this.title = title;
        this.author = author;
        this.yearPublished = yearPublished;
    }
}

// 은행 계좌 클래스
class BankAccount {
    String accountNumber;
    double balance;

    // 생성자
    BankAccount(String accountNumber, double balance) {
        this.accountNumber = accountNumber;
        this.balance = balance;
    }
}

// 컴퓨터 클래스
class Computer {
    String processor;
    int ramCapacity;

    // 생성자
    Computer(String processor, int ramCapacity) {
        this.processor = processor;
        this.ramCapacity = ramCapacity;
    }
}
```

### 3. 메서드(매개변수) 정의

```java
// 자동차 클래스
class Car {
    String model;

    void setModel(String model) {
        this.model = model;
    }
}

// 학생 클래스
class Student {
    int age;

    void setAge(int age) {
        this.age = age;
    }
}

// 도서 클래스
class Book {
    int yearPublished;

    void updateYearPublished(int year) {
        this.yearPublished = year;
    }
}

// 은행 계좌 클래스
class BankAccount {
    double balance;

    void deposit(double amount) {
        this.balance += amount;
    }
}

// 컴퓨터 클래스
class Computer {
    int ramCapacity;

    void upgradeRAM(int additionalRAM) {
        this.ramCapacity += additionalRAM;
    }
}
```

### 4. 메서드(리턴값) 정의

```java
// 자동차 클래스
class Car {
    String color;

    String getColor() {
        return this.color;
    }
}

// 학생 클래스
class Student {
    String name;

    String getName() {
        return this.name;
    }
}

// 도서 클래스
class Book {
    String title;

    String getTitle() {
        return this.title;
    }
}

// 은행 계좌 클래스
class BankAccount {
    double balance;

    double getBalance() {
        return this.balance;
    }
}

// 컴퓨터 클래스
class Computer {
    String processor;

    String getProcessor() {
        return this.processor;
    }
}
```

*/
	}

}
