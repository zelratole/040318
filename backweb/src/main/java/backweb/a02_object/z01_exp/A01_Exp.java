package backweb.a02_object.z01_exp;

public class A01_Exp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*


### 1. 필드
1. 하나의 필드를 가지는 클래스 `Book`을 생성하고, 필드는 `title` (책 제목)으로 정의하세요.
2. 두 개의 필드 `name`과 `age`를 가지는 `Person` 클래스를 만드세요.
3. `Car` 클래스를 만들고, 필드로 `model`, `year`, `color`를 포함하세요.
4. 학생의 `id`, `name`, `grade` 세 가지 필드를 가진 `Student` 클래스를 작성하세요.
5. `Product` 클래스를 만들고, `productName`, `price`, `quantity` 세 개의 필드를 정의하세요.
//### 1. 필드
//1. 하나의 필드를 가지는 클래스 `Book`을 생성하고, 필드는 `title` (책 제목)으로 정의하세요.

class Book {
    String title;
}
//2. 두 개의 필드 `name`과 `age`를 가지는 `Person` 클래스를 만드세요.

class Person {
    String name;
    int age;
}
//3. `Car` 클래스를 만들고, 필드로 `model`, `year`, `color`를 포함하세요.
class Car {
    String model;
    int year;
    String color;
}
//4. 학생의 `id`, `name`, `grade` 세 가지 필드를 가진 `Student` 클래스를 작성하세요.

class Student {
    String id;
    String name;
    String grade;
}
//5. `Product` 클래스를 만들고, `productName`, `price`, `quantity` 세 개의 필드를 정의하세요.
class Product {
    String productName;
    double price;
    int quantity;
}


### 2. 생성자와 필드
6. `Book` 클래스에 생성자를 추가하여 모든 필드를 초기화할 수 있도록 하세요.
7. `Person` 클래스에 이름과 나이를 받는 생성자를 추가하세요.
8. `Car` 클래스에 모든 필드를 초기화할 수 있는 생성자를 작성하세요.
9. `Student` 클래스에 모든 필드를 매개변수로 받아 초기화하는 생성자를 만드세요.
10. `Product` 클래스에 모든 필드를 초기화하는 생성자를 추가하세요.
11. `Person` 클래스에 나이만 설정하는 생성자를 오버로딩하세요.


### 2. 생성자와 필드

```java
class Book {
    String title;

    Book(String title) {
        this.title = title;
    }
}

class Person {
    String name;
    int age;

    Person(String name, int age) {
        this.name = name;
        this.age = age;
    }
}

class Car {
    String model;
    int year;
    String color;

    Car(String model, int year, String color) {
        this.model = model;
        this.year = year;
        this.color = color;
    }
}

class Student {
    String id;
    String name;
    String grade;

    Student(String id, String name, String grade) {
        this.id = id;
        this.name = name;
        this.grade = grade;
    }
}

class Product {
    String productName;
    double price;
    int quantity;
	// 초기화 : 필드값을 객체 생성자에 의해서 초기 데이터를 할당..
    Product(String productName, double price, int quantity) {
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
    }
}

### 3. 생성자와 메서드 오버로딩(같은 이름의 여러개 생성자/메서드를 선언할 수 있는 규칙)
12. `Book` 클래스에 제목만 설정하고 나머지 필드는 기본값을 사용하는 생성자를 오버로딩하세요.
13. `Car` 클래스에 색상만 매개변수로 받고 나머지는 기본값으로 설정하는 생성자를 추가하세요.
14. `Student` 클래스에 `id`와 `name`만 받아 초기화하고 `grade`는 기본값으로 설정하는 생성자를 오버로딩하세요.
15. `Product` 클래스에 `productName`만 설정하고 나머지 필드는 기본값으로 설정하는 생성자를 추가하세요.

### 4. 메서드(매개변수)
16. `Person` 클래스에 이름을 설정하는 `setName` 메서드를 추가하세요.
17. `Book` 클래스에 제목을 변경할 수 있는 `setTitle` 메서드를 작성하세요.
18. `Car` 클래스에 모델을 설정하는 `setModel` 메서드를 만드세요.
19. `Student` 클래스에 학년을 변경하는 `setGrade` 메서드를 추가하세요.
20. `Product` 클래스에 수량을 변경하는 `setQuantity` 메서드를 작성하세요.

### 5. 메서드(리턴값)
21. `Person` 클래스에 이름을 반환하는 `getName` 메서드를 추가하세요.
22. `Book` 클래스에 제목을 반환하는 `getTitle` 메서드를 만드세요.
23. `Car` 클래스에 연도를 반환하는 `getYear` 메서드를 작성하세요.
24. `Student` 클래스에 `id`를 반환하는 `getId` 메서드를 추가하세요.
25. `Product` 클래스에 가격을 반환하는 `getPrice` 메서드를 만드세요.

### 6. 메서드(매개변수+리턴값)
26. `Person` 클래스에 나이를 매개변수로 받아 나이를 변경하고 변경된 나이를 반환하는 메서드를 작성하세요.
27. `Book` 클래스에 페이지 수를 매개변수로 받아 총 페이지 수를 업데이트하고 반환하는 메서드를 추가하세요.
28. `Car` 클래스에 주행 거리를 매개변수로 받아 총 주행 거리를 업데이트하고 반환하는 메서드를 만드세요.
29. `Student` 클래스에 점수를 매개변수로 받아 평균 점수를 계산하고 반환하는 메서드를 추가하세요.
30. `Product` 클래스에판매 수량을 매개변수로 받아 총 판매량을 업데이트하고 반환하는 메서드를 작성하세요.

### 7. 메서드(매개변수+프로세스처리+리턴값)
31. `Person` 클래스에 나이와 연도를 매개변수로 받아 특정 연도의 나이를 계산하고 반환하는 메서드를 만드세요.
32. `Book` 클래스에 현재 페이지와 읽은 페이지 수를 매개변수로 받아 남은 페이지 수를 계산하고 반환하는 메서드를 추가하세요.
33. `Car` 클래스에 기름을 매개변수로 받아 남은 주행 가능 거리를 계산하고 반환하는 메서드를 작성하세요.
34. `Student` 클래스에 현재 점수와 추가 점수를 매개변수로 받아 총점을 계산하고 반환하는 메서드를 추가하세요.
35. `Product` 클래스에 할인율을 매개변수로 받아 할인된 가격을 계산하고 반환하는 메서드를 작성하세요.
 
 */
		Car c1 = new Car("그렌저",2024,"빨강");
		System.out.println(c1.model);
		System.out.println(c1.year);
		System.out.println(c1.color);
	}
}
class Car {
    String model;
    int year;
    String color;
    // 생성자를 통한 초기..
    Car(String model, int year, String color){
    	this.model = model;
    	this.year = year;
    	this.color = color;
    }
}
// 14. `Student` 클래스에 `id`와 `name`만 받아 초기화하고 
//     `grade`는 기본값으로 설정하는 생성자를 오버로딩하세요.
class Student {
    String id;
    String name;
    String grade;

    Student(String id, String name, String grade) {
        this.id = id;
        this.name = name;
        this.grade = grade;
    }
    // 매개변의 갯수가 다르기 때문에 선언이 가능..
    Student(String id, String name){
        this.id = id;
        this.name = name;
        grade = "Ungraded";  // 기본값을 설정..
    }
}
class Person {
	String name;
	int age;
	// age를 생성하면서 매개변수 없이 처리..
	Person(){
		age = 1;
	}
    // 나이만 설정하는 생성자 오버로딩
    Person(int age) {
        this.age = age;
    }
    Person(String name){
    	this.name = name;
    }
    Person(String name, int age){
    	this.age = age;
    	this.name = name;
    }    
}
class Product {
	String productName;
	double price;
	int quantity;
    // productName만 설정하고 나머지는 기본값
    Product(String productName) {
        this.productName = productName;
        this.price = 0.0;
        this.quantity = 0;
    }
    Product(String productName, double price, int quantity){
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
    }
    
}
/*
다음은 생성자를 이용한 오버로딩을 연습할 수 있는 5개의 문제입니다:

### 문제 1: `Movie` 클래스

**문제**: `Movie` 클래스를 설계하세요. 이 클래스는 한 개의 생성자를 사용하여 영화의 `title`만 초기화하고, 두 번째 생성자는 `title`과 `director`를 초기화합니다. 세 번째 생성자는 `title`, `director`, 그리고 `releaseYear`를 초기화합니다.

### 문제 2: `Coffee` 클래스

**문제**: `Coffee` 클래스를 설계하세요. 첫 번째 생성자는 커피의 `type`만 초기화하고, 두 번째 생성자는 `type`과 `origin` (원산지)를 초기화합니다. 세 번째 생성자는 `type`, `origin`, `roastLevel` (로스팅 레벨)을 초기화합니다.

### 문제 3: `Gadget` 클래스

**문제**: `Gadget` 클래스를 설계하세요. 첫 번째 생성자는 기기의 `model`만 초기화하고, 두 번째 생성자는 `model`과 `manufacturer`를 초기화합니다. 세 번째 생성자는 `model`, `manufacturer`, 그리고 `yearOfRelease`를 초기화합니다.

### 문제 4: `Course` 클래스

**문제**: `Course` 클래스를 설계하세요. 이 클래스는 한 개의 생성자를 사용하여 과정의 `name`만 초기화하고, 두 번째 생성자는 `name`과 `instructorName`를 초기화합니다. 세 번째 생성자는 `name`, `instructorName`, 그리고 `creditHours` (학점 시간)를 초기화합니다.

### 문제 5: `Plant` 클래스

**문제**: `Plant` 클래스를 설계하세요. 첫 번째 생성자는 식물의 `species` (종)만 초기화하고, 두 번째 생성자는 `species`와 `commonName` (일반 이름)을 초기화합니다. 세 번째 생성자는 `species`, `commonName`, 그리고 `lifeSpan` (수명)을 초기화합니다.

이 문제들은 클래스의 기본적인 성질을 다양한 방식으로 초기화할 수 있는 능력을 연습하는 데 도움을 줍니다. 생성자 오버로딩을 통해 다양한 초기 상태를 제공함으로써 객체의 유연성과 재사용성을 높일 수 있습니다.

 * */


