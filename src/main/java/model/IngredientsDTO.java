package model;

public class IngredientsDTO {
	private int ingre_seq;
	private int sup_seq;
	private String ingre_item;
	private int ingre_content;
	private String content_unit;
	public int getIngre_seq() {
		return ingre_seq;
	}
	public void setIngre_seq(int ingre_seq) {
		this.ingre_seq = ingre_seq;
	}
	public int getSup_seq() {
		return sup_seq;
	}
	public void setSup_seq(int sup_seq) {
		this.sup_seq = sup_seq;
	}
	public String getIngre_item() {
		return ingre_item;
	}
	public void setIngre_item(String ingre_item) {
		this.ingre_item = ingre_item;
	}
	public int getIngre_content() {
		return ingre_content;
	}
	public void setIngre_content(int ingre_content) {
		this.ingre_content = ingre_content;
	}
	public String getContent_unit() {
		return content_unit;
	}
	public void setContent_unit(String content_unit) {
		this.content_unit = content_unit;
	}
	public IngredientsDTO(int ingre_seq, int sup_seq, String ingre_item, int ingre_content, String content_unit) {
		super();
		this.ingre_seq = ingre_seq;
		this.sup_seq = sup_seq;
		this.ingre_item = ingre_item;
		this.ingre_content = ingre_content;
		this.content_unit = content_unit;
	}
	public IngredientsDTO() {
		super();
	}
	
	
}
