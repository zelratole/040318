package springweb.z01_vo;

public class MailVo {
	// title receiver sender content
	private String title;
	private String receiver;
	private String sender;
	private String content;
	public MailVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MailVo(String title, String receiver, String sender, String content) {
		super();
		this.title = title;
		this.receiver = receiver;
		this.sender = sender;
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
