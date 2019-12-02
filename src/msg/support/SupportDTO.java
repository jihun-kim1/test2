package msg.support;

import java.sql.Date;
import java.sql.Timestamp;

public class SupportDTO {
	public int seq;
	public String id;
	public String name;
	public String phone;
	public String email;
	public String card_name;
	public String method_name;
	public String pg;
	public int donation;
	public Timestamp support_date;
	public String receipt_id;
	public String agency_name;
	
	public SupportDTO() {}
	
	public SupportDTO(int seq, String id, String name, String phone, String email, String card_name, String method_name,
			String pg, int donation, Timestamp support_date, String receipt_id, String agency_name) {
		super();
		this.seq = seq;
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.card_name = card_name;
		this.method_name = method_name;
		this.pg = pg;
		this.donation = donation;
		this.support_date = support_date;
		this.receipt_id = receipt_id;
		this.agency_name = agency_name;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public String getMethod_name() {
		return method_name;
	}
	public void setMethod_name(String method_name) {
		this.method_name = method_name;
	}
	public String getPg() {
		return pg;
	}
	public void setPg(String pg) {
		this.pg = pg;
	}
	public int getDonation() {
		return donation;
	}
	public void setDonation(int donation) {
		this.donation = donation;
	}
	public Timestamp getSupport_date() {
		return support_date;
	}
	public void setSupport_date(Timestamp support_date) {
		this.support_date = support_date;
	}
	public String getReceipt_id() {
		return receipt_id;
	}
	public void setReceipt_id(String receipt_id) {
		this.receipt_id = receipt_id;
	}
	public String getAgency_name() {
		return agency_name;
	}
	public void setAgency_name(String agency_name) {
		this.agency_name = agency_name;
	}
	
	
}
