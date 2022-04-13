package chap11;

import java.util.List;

public class Car {
	private String model;
	private int price;
	private boolean available;
	private List<String> owners;
	
	public Car() { // 생성자를 사용하기 위해 일부러 만든다
		
	}
	
	public Car(String model, int price) {
		this.model = model;
		this.price = price;
	}
	
	public List<String> getOwners() {
		return owners;
	}
	
	public void setOwners(List<String> owners) {
		this.owners = owners;
	}
	
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
