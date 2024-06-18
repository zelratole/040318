package a01_diexp.z02_vo;

import org.springframework.stereotype.Component;

@Component
public class Music {
	private String title;
	private String singer;
	private int pubYear;
	public Music() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Music(String title, String singer, int pubYear) {
		super();
		this.title = title;
		this.singer = singer;
		this.pubYear = pubYear;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public int getPubYear() {
		return pubYear;
	}
	public void setPubYear(int pubYear) {
		this.pubYear = pubYear;
	}
	
}
