package msg.test;

public class MemberDTO {
	public int seq;
	public String name;
	public String id;
	public String pw;
	public String phone;
	public String email;
	public String zipcode;
	public String address1;
	public String address2;
	public char email_Receive;
	public char manager_check;
	
	public MemberDTO() {}
	public MemberDTO(int seq, String name, String id, String pw, String phone, String email, String zipcode,
			String address1, String address2, char email_Receive, char manager_check) {
		super();
		this.seq = seq;
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.email = email;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.email_Receive = email_Receive;
		this.manager_check = manager_check;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public char getEmail_Receive() {
		return email_Receive;
	}
	public void setEmail_Receive(char email_Receive) {
		this.email_Receive = email_Receive;
	}
	public char getManager_check() {
		return manager_check;
	}
	public void setManager_check(char manager_check) {
		this.manager_check = manager_check;
	}
	
	
}
