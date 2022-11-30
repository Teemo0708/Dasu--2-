package model;

public class ClinicDTO {
	private int clinic_seq;
	private String clinic_name; 
	private String clinic_addr; 
	private String clinic_tel; 
	private String clinic_runtime;
	private String clinic_photo;
	private int latitude;
	private int longitude;
	private String admin_id;
	public int getClinic_seq() {
		return clinic_seq;
	}
	public void setClinic_seq(int clinic_seq) {
		this.clinic_seq = clinic_seq;
	}
	public String getClinic_name() {
		return clinic_name;
	}
	public void setClinic_name(String clinic_name) {
		this.clinic_name = clinic_name;
	}
	public String getClinic_addr() {
		return clinic_addr;
	}
	public void setClinic_addr(String clinic_addr) {
		this.clinic_addr = clinic_addr;
	}
	public String getClinic_tel() {
		return clinic_tel;
	}
	public void setClinic_tel(String clinic_tel) {
		this.clinic_tel = clinic_tel;
	}
	public String getClinic_runtime() {
		return clinic_runtime;
	}
	public void setClinic_runtime(String clinic_runtime) {
		this.clinic_runtime = clinic_runtime;
	}
	public String getClinic_photo() {
		return clinic_photo;
	}
	public void setClinic_photo(String clinic_photo) {
		this.clinic_photo = clinic_photo;
	}
	public int getLatitude() {
		return latitude;
	}
	public void setLatitude(int latitude) {
		this.latitude = latitude;
	}
	public int getLongitude() {
		return longitude;
	}
	public void setLongitude(int longitude) {
		this.longitude = longitude;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	
	public ClinicDTO(int clinic_seq, String clinic_name, String clinic_addr, String clinic_tel, String clinic_runtime,
			String clinic_photo, int latitude, int longitude, String admin_id) {
		super();
		this.clinic_seq = clinic_seq;
		this.clinic_name = clinic_name;
		this.clinic_addr = clinic_addr;
		this.clinic_tel = clinic_tel;
		this.clinic_runtime = clinic_runtime;
		this.clinic_photo = clinic_photo;
		this.latitude = latitude;
		this.longitude = longitude;
		this.admin_id = admin_id;
	}
	
	public ClinicDTO() {
		super();
	}
	
	
}
