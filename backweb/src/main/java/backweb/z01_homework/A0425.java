package backweb.z01_homework;

public class A0425 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*

#### 1. 배열 기본 사용
- 자바에서 int 타입의 배열을 선언하고 초기화하며, 그 배열의 각 원소에 1부터 10까지의 값을 할당하는 프로그램을 작성하시오.

#### 2. 객체 배열
- `Person` 클래스를 정의하고, `Person` 객체를 담을 수 있는 배열을 선언한 후, 배열에 여러 `Person` 객체를 생성하여 할당하는 프로그램을 작성하시오.

#### 3. 배열 내 최댓값 찾기
- 정수형 배열이 주어졌을 때 배열 내의 최댓값을 찾아 출력하는 프로그램을 작성하시오.


#### 4. 객체 메소드 호출
- `Car` 클래스를 정의하고, 이 클래스에 `maxSpeed` 및 `passengerCnt` 필드를 포함시킨 후, 객체를 생성하여 이 필드들을 호출하는 프로그램을 작성하시오.

#### 5. 배열 원소의 합
- `double` 타입의 배열을 선언하고, 배열 내 모든 원소의 합을 계산하여 출력하는 프로그램을 작성하시오.

#### 6. 문자열 검색
- 사용자로부터 문자열 배열과 특정 문자열을 입력 받아, 해당 문자열이 배열 내에 존재하는지 확인하고 결과를 출력하는 프로그램을 작성하시오.

#### 7. 인스턴스 비교
- `Book` 클래스를 생성하고, 두 개의 `Book` 인스턴스가 서로 동일한지 (`equals` 메소드 사용) 확인하는 프로그램을 작성하시오.

#### 8. 객체 배열 순회
- `Student` 객체 배열을 생성하고 초기화한 후, 배열을 순회하면서 각 학생의 정보를 출력하는 프로그램을 작성하시오.
여기 각 요청에 맞는 자바 프로그램 예시를 제공합니다.

### 1. 배열 기본 사용
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = new int[10];
        for (int i = 0; i < numbers.length; i++) {
            numbers[i] = i + 1;
        }
        
        for (int number : numbers) {
            System.out.println(number);
        }
    }
}
```

### 2. 객체 배열
```java
class Person {
    String name;

    Person(String name) {
        this.name = name;
    }
}

public class Main {
    public static void main(String[] args) {
        Person[] people = new Person[5];
        people[0] = new Person("John");
        people[1] = new Person("Jane");
        people[2] = new Person("Bob");
        people[3] = new Person("Alice");
        people[4] = new Person("Mike");
        
        for (Person person : people) {
            System.out.println(person.name);
        }
    }
}
```

### 3. 배열 내 최댓값 찾기
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {5, 3, 8, 1, 4, 9, 6};
        int max = numbers[0];
        
        for (int number : numbers) {
            if (number > max) {
                max = number;
            }
        }
        
        System.out.println("Maximum value: " + max);
    }
}
```

### 4. 객체 메소드 호출
```java
class Car {
    int maxSpeed;
    int passengerCnt;

    Car(int maxSpeed, int passengerCnt) {
        this.maxSpeed = maxSpeed;
        this.passengerCnt = passengerCnt;
    }
}

public class Main {
    public static void main(String[] args) {
        Car car = new Car(180, 5);
        System.out.println("Max Speed: " + car.maxSpeed);
        System.out.println("Passenger Count: " + car.passengerCnt);
    }
}
```

### 5. 배열 원소의 합
```java
public class Main {
    public static void main(String[] args) {
        double[] numbers = {3.5, 2.8, 4.1, 1.2};
        double sum = 0;
        
        for (double number : numbers) {
            sum += number;
        }
        
        System.out.println("Total sum: " + sum);
    }
}
```

### 6. 문자열 검색
```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        String[] words = {"apple", "banana", "cherry", "date"};
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter a word to search: ");
        String input = scanner.nextLine();
        
        boolean found = false;
        for (String word : words) {
            if (word.equals(input)) {
                found = true;
                break;
            }
        }
        
        System.out.println("Word found: " + found);
        scanner.close();
    }
}
```

### 7. 인스턴스 비교
```java
class Book {
    String title;
    String author;

    Book(String title, String author) {
        this.title = title;
        this.author = author;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Book) {
            Book other = (Book) obj;
            return this.title.equals(other.title) && this.author.equals(other.author);
        }
        return false;
    }
}

public class Main {
    public static void main(String[] args) {
        Book book1 = new Book("1984", "George Orwell");
        Book book2 = new Book("1984", "George Orwell");
        
        System.out.println("Books are equal: " + book1.equals(book2));
    }
}
```

### 8. 객체 배열 순회
```java
class Student {
    String name;
    int age;

    Student(String name, int age) {
        this.name = name;
        this.age = age;
    }
}

public class Main {
    public static void main(String[] args) {
        Student[] students = {
            new Student("Alice", 22),
            new Student("Bob", 20),
            new Student("Charlie", 23)
        };
        
        for (Student student : students) {
            System.out.println("Student Name: " + student.name + ", Age: " + student.age);
        }
    }
}
```

위 코드들은 각각의

 요구 사항에 맞게 작성된 간단한 자바 프로그램입니다. 프로그램을 컴파일하고 실행하여 결과를 확인할 수 있습니다.
### 토론 과제

#### 1. 객체 지향의 장점과 단점
- 객체 지향 프로그래밍의 주요 장점과 단점에 대해 토론하시오.

#### 2. 클래스와 객체의 관계
- 클래스와 객체의 관계에 대해 설명하고, 실세계 예시를 들어 설명하시오.

#### 3. 자바 메모리 관리
- 자바에서의 메모리 관리 방법에 대해 설명하고, 이가 프로그램 성능에 어떤 영향을 미치는지 토론하시오.

#### 4. 문자열 관리
- 자바에서 문자열을 관리하는 방식과 그 특징에 대해 설명하고, 이 방식이 다른 프로그래밍 언어와 어떻게 다른지 토론하시오.
### 토론 과제에 대한 자세한 설명과 예시들을 제공하겠습니다.

#### 1. 객체 지향의 장점과 단점
**장점:**
- **모듈성:** 객체 지향 프로그래밍은 데이터를 캡슐화하여 객체 내부의 데이터를 외부로부터 숨기고, 객체 간에는 메시지를 통해서만 상호 작용할 수 있게 합니다. 이로 인해 코드 수정이 용이하고, 코드의 재사용성이 향상됩니다.
- **유지보수:** 객체들은 독립적이므로 시스템의 특정 부분을 수정해야 할 때 다른 부분에 미치는 영향을 최소화하면서 수정할 수 있습니다.
- **확장성:** 기존의 코드를 변경하지 않고도 객체들을 상속받아 새 기능을 추가하거나 기존 기능을 변경할 수 있습니다.

**단점:**
- **성능 문제:** 객체 지향 프로그램은 절차적 프로그램보다 메모리 사용이 더 많고, 실행 속도가 느릴 수 있습니다.
- **복잡성:** 시스템이 커질수록 상속과 메시지 전달과 같은 객체 지향의 특징들이 프로그램의 복잡도를 증가시킬 수 있습니다.
- **설계의 어려움:** 효과적인 객체 지향 설계를 요구하며, 설계가 잘못되면 수정이 어렵고 비효율적인 코드가 될 수 있습니다.

#### 2. 클래스와 객체의 관계
클래스는 객체를 생성하기 위한 템플릿 또는 블루프린트로, 객체의 속성과 기능을 정의합니다. 객체는 클래스에 정의된 속성과 기능을 가지고 실제 메모리 상에 생성된 인스턴스입니다.
**실세계 예시:** "자동차"라는 클래스가 있을 때, 이 클래스는 자동차의 특성(색상, 브랜드, 모델 등)과 기능(운전, 정지, 가속 등)을 정의합니다. 여러분이 실제로 구매하거나 보게 되는 각각의 자동차는 "자동차" 클래스의 객체입니다.

#### 3. 자바 메모리 관리
자바에서는 가비지 컬렉션(GC)을 통해 메모리 관리를 자동으로 수행합니다. 객체가 더 이상 필요하지 않게 되면(즉, 더 이상 참조되지 않을 때), GC는 이러한 객체를 메모리에서 자동으로 제거하여 메모리 누수를 방지합니다. 이 방법은 프로그래머가 메모리 관리에 대해 신경 쓸 필요가 없게 하지만, 가비지 컬렉션 작동 시점과 지속 시간을 예측하기 어렵게 만들어 프로그램 성능에 영향을 줄 수 있습니다.

#### 4. 문자열 관리
자바에서는 문자열을 `String` 객체로 관리하며, 이 문자열 객체들은 불변(immutable)입니다. 한 번 생성된 문자열은 수정할 수 없으며, 문자열의 수정이 필요한 경우 새로운 `String` 객체가 생성됩니다. 이러한 특성은 메모리 사용 측면에서 비효율적일 수 있으나, `String` 풀을 사용하여 자주 사용되는 문자열을 재사용함으로써 성능을 최적화합니다. 다른 언어에서는 문자

열이 가변(mutable)일 수 있어, 같은 문자열 작업이 더 효율적이거나 더 비효율적일 수 있습니다.

이러한 토론 주제들은 프로그래밍 이론 뿐만 아니라 실제 응용에 있어서도 중요한 요소들을 다루며, 구체적인 예시와 설명을 통해 이해를 돕습니다.
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
