package chap08;

// 이 클래스의 속성
// productModel, discountPrice


public class MyBean2 {
	private String model;
	private int price;
	
	public String getproductModel() {
		return model;
	}
	
	public int getDiscountPrice() {
		return price;
	}
	
	// 리턴타입이 boolean이면 get대신 is로 변경 가능
	public boolean isHighPrice() {
		return price > 10000;
	}
}
