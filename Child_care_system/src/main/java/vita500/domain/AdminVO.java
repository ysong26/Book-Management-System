package vita500.domain;

public class AdminVO {
	
	private String NFC_ID;
	private String User_ID;
	private String Child_Name;
	private String Child_Gender;
	
	public String getNFC_ID() {
		return NFC_ID;
	}
	public void setNFC_ID(String nFC_ID) {
		NFC_ID = nFC_ID;
	}
	public String getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(String user_ID) {
		User_ID = user_ID;
	}
	public String getChild_Name() {
		return Child_Name;
	}
	public void setChild_Name(String child_Name) {
		Child_Name = child_Name;
	}
	public String getChild_Gender() {
		return Child_Gender;
	}
	public void setChild_Gender(String child_Gender) {
		Child_Gender = child_Gender;
	}
	
	@Override
	public String toString() {
		return "AdminVO [NFC_ID=" + NFC_ID + ", User_ID=" + User_ID + ", Child_Name=" + Child_Name + ", Child_Gender="
				+ Child_Gender + "]";
	}	

}
