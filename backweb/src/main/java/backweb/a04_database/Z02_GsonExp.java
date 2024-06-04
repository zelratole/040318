package backweb.a04_database;

import com.google.gson.Gson;

import backweb.vo.Product;

public class Z02_GsonExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ex1) Product를 객체 생성 gson lib로 json데이터 만들기
		Gson gson = new Gson();
		Product prod = new Product("사과",2000,2);
		String jsonObStr = gson.toJson(prod);
		System.out.println(jsonObStr);
		// ex2) A05_DepartDao  getDepartmentList()로 json데이터 만들기
		A05_DepartDao dao = new A05_DepartDao();
		String jsonArrStr = gson.toJson(dao.getDepartmentList(""));
		System.out.println(jsonArrStr);
		/*
	[{"department_id":11,"department_name":"인사","manager_id":100,"location_id":1700},
	{"department_id":12,"department_name":"재무","manager_id":88,"location_id":99},
	{"department_id":13,"department_name":"기획조정","manager_id":13,"location_id":1500},
	{"department_id":50,"department_name":"Shipping","manager_id":121,"location_id":1500},
	{"department_id":60,"department_name":"IT","manager_id":103,"location_id":1700},
	{"department_id":70,"department_name":"Public Relations","manager_id":204,"location_id":2700},
	{"department_id":80,"department_name":"Sales","manager_id":145,"location_id":2400},
	{"department_id":90,"department_name":"Executive","manager_id":100,"location_id":1700},{"department_id":100,"department_name":"Finance","manager_id":108,"location_id":1700},{"department_id":110,"department_name":"Accounting","manager_id":205,"location_id":1700},{"department_id":120,"department_name":"Treasury","manager_id":0,"location_id":1700},{"department_id":130,"department_name":"Corporate Tax","manager_id":0,"location_id":1700},{"department_id":140,"department_name":"Control And Credit","manager_id":0,"location_id":1700},{"department_id":150,"department_name":"Shareholder Services","manager_id":0,"location_id":1700},{"department_id":160,"department_name":"Benefits","manager_id":0,"location_id":1700},{"department_id":170,"department_name":"Manufacturing","manager_id":0,"location_id":1700},{"department_id":180,"department_name":"Construction","manager_id":0,"location_id":1700},{"department_id":190,"department_name":"Contracting","manager_id":0,"location_id":1700},{"department_id":200,"department_name":"Operations","manager_id":0,"location_id":1700},{"department_id":210,"department_name":"IT Support","manager_id":0,"location_id":1700},{"department_id":220,"department_name":"NOC","manager_id":0,"location_id":1700},{"department_id":230,"department_name":"Training","manager_id":0,"location_id":1700},{"department_id":240,"department_name":"Support","manager_id":0,"location_id":1700}]
		 **/
		
	}

}
