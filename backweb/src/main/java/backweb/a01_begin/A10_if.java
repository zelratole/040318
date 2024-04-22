package backweb.a01_begin;

public class A10_if {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 조건문
1. if(조건문){
    
   }
2. if(조건문){
   		조건문이 true
   }else{
   		조건문이 false
   }
3. if(조건1){
		조건1
   }else if(조건2){
   		조건1을 제외하고 조건2
   }else if(조건3){
   		위 나열된 조건을 제외하고 조건3
   }..
   ..
   else{
   		위의 조건에 해당하지 않을 때..
   }   
 * */
		System.out.println("컴퓨터와 하는 구슬 홀/짝 게임");
		var comMarbles = (int)(Math.floor(Math.random()*5+1));//1~5
		char comCh = comMarbles%2==0?'짝':'홀';
		var myChoice = '홀'; ///0은 짝/1은 홀로 처리할 때..
		System.out.println("컴퓨터의 임의의 구슬 수:"+comMarbles);
		System.out.println("컴퓨터의 홀짝?:"+comCh);
		System.out.println("나의 선택?:"+myChoice);
		if(comCh==myChoice) {
			System.out.println("나의 승");
		}else {
			System.out.println("컴퓨터의 승");
		}
		
		
		// ex) A11_ifelseExp.java
		//     Scanner를 통해서 구매한 물건의 가격/갯수를 입력받아.
		//     총비용이  50000미만  일반고객
		//             50000~10000미만  우수고객.
		//             100000이상  VIP
		
		
		
		
	}

}
