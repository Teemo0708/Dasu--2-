package model;

public class SurveyDTO {
	private int sup_seq;
	private String sup_img;
	private String sup_name;
	private String sup_description;
	private String sup_func;
	private int sup_sort;
	private int sup_price;
	private String sup_link;

	
	public SurveyDTO() {
		
	}
	
	public SurveyDTO(int sup_seq, String sup_img, String sup_name, String sup_description, String sup_func,
			int sup_sort, int sup_price, String sup_link) {
		super();
		this.sup_seq = sup_seq;
		this.sup_img = sup_img;
		this.sup_name = sup_name;
		this.sup_description = sup_description;
		this.sup_func = sup_func;
		this.sup_sort = sup_sort;
		this.sup_price = sup_price;
		this.sup_link = sup_link;
	}
	
	public int getSup_seq() {
		return sup_seq;
	}
	public void setSup_seq(int sup_seq) {
		this.sup_seq = sup_seq;
	}
	public String getSup_img() {
		return sup_img;
	}
	public void setSup_img(String sup_img) {
		this.sup_img = sup_img;
	}
	public String getSup_name() {
		return sup_name;
	}
	public void setSup_name(String sup_name) {
		this.sup_name = sup_name;
	}
	public String getSup_description() {
		return sup_description;
	}
	public void setSup_description(String sup_description) {
		this.sup_description = sup_description;
	}
	public String getSup_func() {
		return sup_func;
	}
	public void setSup_func(String sup_func) {
		this.sup_func = sup_func;
	}
	public int getSup_sort() {
		return sup_sort;
	}
	public void setSup_sort(int sup_sort) {
		this.sup_sort = sup_sort;
	}
	public int getSup_price() {
		return sup_price;
	}
	public void setSup_price(int sup_price) {
		this.sup_price = sup_price;
	}
	public String getSup_link() {
		return sup_link;
	}
	public void setSup_link(String sup_link) {
		this.sup_link = sup_link;
	}
	
	
}
