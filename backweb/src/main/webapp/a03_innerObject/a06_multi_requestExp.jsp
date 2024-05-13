<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
ex) 1단계 구매한 물건의 갯수를 다중으로 입력하게 하고, 총 구매 갯수를 출력
	사과   [ ]개
	바나나  [ ]개
	딸기   [ ]개
	[총구매갯수확인]
	구매 갯수 @@ 개..
	- 기본 다중 요청값 처리 완료
	- 위 다중 요청값에서 각각의 데이터를 형변환 처리 
		int cnt = Integer.parseInt("25");
	- 전역변수 선언(totCnt), for안에서 totCnt += cnt; 누적처리..
	----------------------------------------
	2단계 배열로 물건명과 가격을 선언 후, 
	사과(@@@원)  [ ]개 
	바나나(@@@원) [ ]개 
	딸기(@@@원)  [ ]개
	[총비용확인] 
	총비용이 출력되게 하세요
 --%>
<h2>전체 구매갯수 확인</h2>
<form>
	사과:<input type="text" name="cnt" size="2" value="0">개<br>
	바나나:<input type="text" name="cnt" size="2" value="0">개<br>
	딸기:<input type="text" name="cnt" size="2" value="0">개<br>
	<input type="submit" value="총구매갯수확인"><br>
</form> 
 
<%
String cnts[] = request.getParameterValues("cnt");
System.out.println(cnts);
if(cnts!=null){
	System.out.println(cnts);
	// 누적변수를 위해서 for 밖에서 전역변수 선언.. 
	// 변수의 block({})단위 처리와 전역변수와 지역변수 구분 처리 이해...
	int totCnt = 0;
	System.out.println("초기 totCnt:"+totCnt);
	for(String cntStr:cnts){
		int cnt = Integer.parseInt(cntStr); // 숫자형 문자열 "25" ==> 25
		totCnt += cnt;
		System.out.println(cnt+":"+totCnt);
%> 
		<h2>구매한 갯수:<%=cntStr%></h2>
<%
	}
	System.out.println("최종 totCnt:"+totCnt);
%>
	<h2>총 갯수:<%=totCnt%></h2>
<%	
}
%>
<%--
	2단계 배열로 물건명과 가격을 선언 후, 
	사과(@@@원)  [ ]개 
	바나나(@@@원) [ ]개 
	딸기(@@@원)  [ ]개
	[총비용확인] 
	총비용이 출력되게 하세요
1. form에 출력할 배열 데이터 선언
	물건명배열 : String[]fNames;
	가격 배열 int[]prices;
2. for에 의해서 화면구성..
3. 요청값을 넘겼을 때, 처리
	String [] cnts = request.getParamterValues("cnt");
4. for문 처리
    int totPay = 0;
	for(int idx=0;idx<cnts.length;idx++){
		int cnt = Integer.parseInt(cnts[idx]);
		int price = prices[idx];
		totPay += cnt*price;
	}	
5. 총비용 출력
	<%=totPay%>	
--%>
<h2>배열로 구매 처리</h2>
<form>
<%
String []fNames = {"사과","바나나","딸기"};
int [] prices = {2000,4000,12000};

for(int idx=0;idx<fNames.length;idx++){
%>
	<%=fNames[idx]%>(<%=prices[idx]%>원):<input type="text" name="cnt2" value="0"/>
<%
}
%>
<input type="submit" value="총비용확인"/>
</form>
<h3>구매한 물건과 갯수</h3>
<%
String []cnts2 = request.getParameterValues("cnt2");
if(cnts2!=null){
	int totPay =0;
	for(int idx=0;idx<fNames.length;idx++){
		int price = prices[idx];
		int cnt = Integer.parseInt(cnts2[idx]);
		totPay +=price*cnt;	
	%>
		<h3><%=fNames[idx] %>, <%=prices[idx] %>, <%=cnts2[idx] %>개</h3>
	<%
	}
	%>
	<h3>총비용:<%=totPay %></h3>
	<%
}
%>
</body>
</html>