package backweb.z01_homework;

public class A0422 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
### 연습문제

1. `java FruitShop 사과 100 5`라는 명령어를 사용했을 때, `main` 메서드에서 `args` 배열을 활용해 총 비용을 계산하는 Java 코드를 작성하세요.
2. `java WeatherForecast 비 오늘` 명령어가 입력되었을 때, 이를 처리하는 Java 프로그램을 작성하세요. 입력된 날씨와 요일을 출력하고, 날씨에 따라 다른 활동을 추천하는 메시지를 출력해 보세요.
3. Java 프로그램을 작성하여 사용자로부터 세 개의 정수를 입력받아 평균을 출력하도록 하세요. `Scanner` 객체를 사용해야 합니다.
4. 조건문과 반복문을 이용하여 1부터 사용자가 입력한 숫자까지의 소수(Prime number)들을 모두 출력하는 Java 프로그램을 작성하세요.
5. 사용자로부터 이름과 나이를 입력받아, 입력된 나이에 따라 다른 인사말을 출력하는 Java 프로그램을 작성하세요. 예를 들어, 20세 미만이면 "안녕 친구!", 20세 이상이면 "안녕하세요!"를 출력합니다.
6. `Scanner`를 사용하여 사용자로부터 연도를 입력받고, 입력된 연도가 윤년인지 아닌지를 판단하여 출력하는 Java 프로그램을 작성하세요.
7. 자바의 Math.random() 를 사용하여 두 팀이 주사위를 던져 높은 수를 얻은 팀이 승리하는 게임을 만드세요. 각 팀은 주사위를 두 번씩 던지며, 최종 점수를 계산하여 승자를 결정합니다.
8. 사용자로부터 10개의 정수를 입력받아, 그 중 최대값과 최소값을 찾아 출력하는 Java 프로그램을 작성하세요.
아래에 요청하신 여러 Java 프로그램 예제들을 제공합니다.

1. **사과 구매 비용 계산 프로그램**
   ```java
   public class FruitShop {
       public static void main(String[] args) {
           String fruit = args[0];
           int price = Integer.parseInt(args[1]);
           int quantity = Integer.parseInt(args[2]);

           int totalCost = price * quantity;
           System.out.println("총 비용: " + totalCost);
       }
   }
   ```

2. **날씨 예보 및 활동 추천 프로그램**
   ```java
   public class WeatherForecast {
       public static void main(String[] args) {
           String weather = args[0];
           String day = args[1];

           System.out.println("날씨: " + weather);
           System.out.println("요일: " + day);

           if (weather.equals("비")) {
               System.out.println("우산을 챙기세요!");
           } else if (weather.equals("맑음")) {
               System.out.println("야외 활동하기 좋은 날입니다!");
           } else {
               System.out.println("적절한 활동을 선택하세요.");
           }
       }
   }
   ```

3. **세 정수의 평균 계산 프로그램**
   ```java
   import java.util.Scanner;

   public class AverageCalculator {
       public static void main(String[] args) {
           Scanner scanner = new Scanner(System.in);
           System.out.println("세 개의 정수를 입력하세요:");

           int a = scanner.nextInt();
           int b = scanner.nextInt();
           int c = scanner.nextInt();

           double average = (a + b + c) / 3.0;
           System.out.println("평균: " + average);

           scanner.close();
       }
   }
   ```

4. **소수 찾기 프로그램**
   ```java
   import java.util.Scanner;

   public class PrimeFinder {
       public static void main(String[] args) {
           Scanner scanner = new Scanner(System.in);
           System.out.println("숫자를 입력하세요:");
           int number = scanner.nextInt();

           for (int i = 1; i <= number; i++) {
               if (isPrime(i)) {
                   System.out.println(i);
               }
           }
           scanner.close();
       }

       public static boolean isPrime(int num) {
           if (num <= 1) return false;
           for (int i = 2; i * i <= num; i++) {
               if (num % i == 0) return false;
           }
           return true;
       }
   }
   ```

5. **나이에 따른 인사말 출력 프로그램**
   ```java
   import java.util.Scanner;

   public class Greeting {
       public static void main(String[] args) {
           Scanner scanner = new Scanner(System.in);
           System.out.println("이름과 나이를 입력하세요:");

           String name = scanner.next();
           int age = scanner.nextInt();

           if (age < 20) {
               System.out.println("안녕 친구!");
           } else {
               System.out.println("안녕하세요!");
           }

           scanner.close();
       }
   }
   ```

6. **윤년 판별 프로그램**
   ```java
   import java.util.Scanner;

   public class LeapYearChecker {
       public static void main(String[] args) {
           Scanner scanner = new Scanner(System.in);
           System.out.println("연도를 입력하세요:");
           int year = scanner.nextInt();

           boolean isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
           if (isLeapYear) {
               System.out.println(year + "년은 윤년입니다.");
           } else {
               System.out.println(year + "년은 윤년이 아닙니다.");
           }

           scanner.close();
       }
   }
   ```

7. **주사위 게임 프로그램**
   ```java
   public class DiceGame {
       public static void main(String[] args) {
           int team1Score = (int)(Math.random() * 6) + 1;
           int team2Score = (int)(Math.random() * 6) + 1;

           System.out.println("Team 1 점수: " + team1Score);
           System.out.println("Team 2 점수: " + team2Score);

           if (team1Score > team2Score) {
               System.out.println("Team 1이 승리했습니다!");
           } else if (team1Score < team2Score) {
               System.out.println("Team 2가 승리했습니다!");
           } else {
               System.out.println("무승부입니다!");
           }
       }

   }
   ```

8. **최대값과 최소값 찾기 프로그램**
   ```java
   import java.util.Scanner;

   public class MaxMinFinder {
       public static void main(String[] args) {
           Scanner scanner = new Scanner(System.in);
           int[] numbers = new int[10];
           System.out.println("10개의 정수를 입력하세요:");

           for (int i = 0; i < 10; i++) {
               numbers[i] = scanner.nextInt();
           }

           int max = numbers[0];
           int min = numbers[0];
           for (int i = 1; i < 10; i++) {
               if (numbers[i] > max) {
                   max = numbers[i];
               }
               if (numbers[i] < min) {
                   min = numbers[i];
               }
           }

           System.out.println("최대값: " + max);
           System.out.println("최소값: " + min);

           scanner.close();
       }
   }
   ```

### 토론 과제

1. 자바 프로그램에서 사용자 입력을 처리하는 `Scanner`와 String args[] 차이점은 무엇이며, 어떤 상황에서 각각을 선호하게 될까요?
2. 명령줄 인자를 사용하는 프로그램의 장점과 한계는 무엇이라고 생각하시나요? 

1. **`Scanner`와 `String[] args` 차이점**
   - `Scanner`는 실행 중인 프로그램에 사용자 입력을 동적으로 제공할 때 사용합니다. 사용자 인터페이스와 상호 작용하는 경우에 적합합니다.
   - `String[] args`는 프로그램 실행 시 초기 매개변수를 명령줄을 통해 고정적으로 전달받습니다. 배치 작업, 자동화된 스크립트 실행 등 초기 설정이 필요한 경우에 유용합니다.

2. **명령줄 인자의 장점과 한계**
   - **장점**: 간단하게 초기 매개변수를 전달할 수 있으며, 스크립트와 함께 사용하기 쉽습니다. 사용자 상호 작용을 요구하지 않는 자동화된 프로세스에서 유리합니다.
   - **한계**: 사용자로부터 추가적인 입력을 받기 어렵고, 실행 시점에만 매개변수를 설정할 수 있습니다. 입력이 복잡해지거나 사용자로부터 동적으로 데이터를 받아야 하는 상황에서는 부적합할 수 있습니다.



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

# 프로젝트 관련하여 조원들과 협의 하시고 16:00에 조장님들 의자들고 잠깐
앞으로 오세요.

  
  
 
 */
	}

}
