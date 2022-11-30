package model;

public class markupDTO {

	private int markup_seq;
	private String markup_date;
	private String mem_id;
	private int sup_seq;
	private String img;
	private String name;
	private String desc;
	private String func;
	private int price;
	private String link;

	
	public markupDTO() {
		
	}
	
	public markupDTO(int markup_seq, String markup_date, String mem_id, int sup_seq) {
		super();
		this.markup_seq = markup_seq;
		this.markup_date = markup_date;
		this.mem_id = mem_id;
		this.sup_seq = sup_seq;
	}
	
	


	public markupDTO(int sup_seq, String img, String name, String desc, String func, int price, String link) {
		super();
		this.sup_seq = sup_seq;
		this.img = img;
		this.name = name;
		this.desc = desc;
		this.func = func;
		this.price = price;
		this.link = link;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getFunc() {
		return func;
	}

	public void setFunc(String func) {
		this.func = func;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getMarkup_seq() {
		return markup_seq;
	}
	public void setMarkup_seq(int markup_seq) {
		this.markup_seq = markup_seq;
	}
	public String getMarkup_date() {
		return markup_date;
	}
	public void setMarkup_date(String markup_date) {
		this.markup_date = markup_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getSup_seq() {
		return sup_seq;
	}
	public void setSup_seq(int sup_seq) {
		this.sup_seq = sup_seq;
	}
	
	
}
