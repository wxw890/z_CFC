package mybean;

public class Dto {
	private String bo_id;
	private String bo_pw;
	private String bo_passCheck;
	private String bo_name;
	private String bo_age;
	private String bo_gender;
	private int bo_totalmatter;
	private int bo_sumatter;
	private String bo_email;
	private int mileage;
	
	
	public String getBo_gender() {
		return bo_gender;
	}
	public void setBo_gender(String bo_gender) {
		this.bo_gender = bo_gender;
	}
	public int getBo_totalmatter() {
		return bo_totalmatter;
	}
	public void setBo_totalmatter(int bo_totalmatter) {
		this.bo_totalmatter = bo_totalmatter;
	}
	public int getBo_sumatter() {
		return bo_sumatter;
	}
	public void setBo_sumatter(int bo_sumatter) {
		this.bo_sumatter = bo_sumatter;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getBo_passCheck() {
		return bo_passCheck;
	}
	public void setBo_passCheck(String bo_passCheck) {
		this.bo_passCheck = bo_passCheck;
	}
	public String getBo_id() {
		return bo_id;
	}
	public void setBo_id(String bo_id) {
		if(bo_id==null)
			bo_id="";
		this.bo_id = bo_id;
	}
	
	public String getBo_pw() {
		return bo_pw;
	}
	public void setBo_pw(String bo_pw) {
		this.bo_pw = bo_pw;
	}
	public String getBo_name() {
		return bo_name;
	}
	public void setBo_name(String bo_name) {
		this.bo_name = bo_name;
	}
	public String getBo_age() {
		return bo_age;
	}
	public void setBo_age(String bo_age) {
		this.bo_age = bo_age;
	}
	public String getBo_email() {
		return bo_email;
	}
	public void setBo_email(String bo_email) {
		this.bo_email = bo_email;
	}

	
	
	
	
}
