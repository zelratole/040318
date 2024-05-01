package backweb.a02_object.a01_access.z06;

public class WeatherInfoVo {
	private String city;
	private double temperature;
	private double humidity;
	public WeatherInfoVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WeatherInfoVo(String city, double temperature, double humidity) {
		super();
		this.city = city;
		this.temperature = temperature;
		this.humidity = humidity;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getTemperature() {
		return temperature;
	}
	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}
	public double getHumidity() {
		return humidity;
	}
	public void setHumidity(double humidity) {
		this.humidity = humidity;
	}
	
}
