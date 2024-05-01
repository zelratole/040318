package backweb.a02_object.a01_access.z06;

public class MovieVo {
	private String title;
	private String director;
	private int releaseYear;
	public MovieVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovieVo(String title, String director, int releaseYear) {
		super();
		this.title = title;
		this.director = director;
		this.releaseYear = releaseYear;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public int getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}
	
}
