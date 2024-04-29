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

### 2. 생성자와 필드
6. `Book` 클래스에 생성자를 추가하여 모든 필드를 초기화할 수 있도록 하세요.
7. `Person` 클래스에 이름과 나이를 받는 생성자를 추가하세요.
8. `Car` 클래스에 모든 필드를 초기화할 수 있는 생성자를 작성하세요.
9. `Student` 클래스에 모든 필드를 매개변수로 받아 초기화하는 생성자를 만드세요.
10. `Product` 클래스에 모든 필드를 초기화하는 생성자를 추가하세요.

~ 9:45

### 3. 생성자와 메서드 오버로딩
11. `Person` 클래스에 나이만 설정하는 생성자를 오버로딩하세요.
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
	}

}

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
