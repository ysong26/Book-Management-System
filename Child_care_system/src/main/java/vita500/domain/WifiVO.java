package vita500.domain;

public class WifiVO {
	
	private String nfc_no;
	private String nfc_datetime;
	private String nfc_id;
	
	
	public String getNfc_no() {
		return nfc_no;
	}
	public void setNfc_no(String nfc_no) {
		this.nfc_no = nfc_no;
	}
	public String getNfc_datetime() {
		return nfc_datetime;
	}
	public void setNfc_datetime(String nfc_datetime) {
		this.nfc_datetime = nfc_datetime;
	}
	public String getNfc_id() {
		return nfc_id;
	}
	public void setNfc_id(String nfc_id) {
		this.nfc_id = nfc_id;
	}
	
	
	@Override
	public String toString() {
		return "WifiVO [nfc_no=" + nfc_no + ", nfc_datetime=" + nfc_datetime + ", nfc_id=" + nfc_id + "]";
	}	
	

}
