package vita500.domain;

public class MemberVO {

	private String User_ID; //아이디
	private String User_PW; //패스워드
	private String User_Name; //이름
	private String User_CPN; //전화번호
	private String User_Email; //이메일
	
	
	public String getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(String user_ID) {
		User_ID = user_ID;
	}
	public String getUser_PW() {
		return User_PW;
	}
	public void setUser_PW(String user_PW) {
		User_PW = user_PW;
	}
	public String getUser_Name() {
		return User_Name;
	}
	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}
	public String getUser_CPN() {
		return User_CPN;
	}
	public void setUser_CPN(String user_CPN) {
		User_CPN = user_CPN;
	}
	public String getUser_Email() {
		return User_Email;
	}
	public void setUser_Email(String user_Email) {
		User_Email = user_Email;
	}
	@Override
	public String toString() {
		return "memberVO [User_ID=" + User_ID + ", User_PW=" + User_PW + ", User_Name=" + User_Name + ", User_CPN="
				+ User_CPN + ", User_Email=" + User_Email + "]";
	}

	
	
}
