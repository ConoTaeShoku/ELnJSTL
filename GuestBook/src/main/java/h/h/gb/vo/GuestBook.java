package h.h.gb.vo;

public class GuestBook {

	private int num;
	private String name;
	private String password;
	private String content;
	private String inputdate;

	public GuestBook() {
	}

	public GuestBook(String name, String password, String content) {
		this.name = name;
		this.password = password;
		this.content = content;
	}

	public GuestBook(int num, String name, String password, String content, String inputdate) {
		this.num = num;
		this.name = name;
		this.password = password;
		this.content = content;
		this.inputdate = inputdate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "GuestBook [num=" + num + ", name=" + name + ", password=" + password + ", content=" + content
				+ ", inputdate=" + inputdate + "]";
	}

}
