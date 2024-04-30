package backweb.a02_object.a01_access.z04;

import backweb.a02_object.a01_access.z03.Book;
import backweb.a02_object.a01_access.z03.Car;

public class Computer {
	Book b1;  // public이기에 호출 가능(import만하면)
	Car c1;   // public이기에 호출 가능(import만하면)
//	Food food; public class가 아니기에 호출 불가능
}
