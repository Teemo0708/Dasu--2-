package model;

public class RecommendDTO {

	private int reco_seq;
	private String mem_id;
	private int sup_seq;
	private String reco_date;
	private String reco_memo;
	public int getReco_seq() {
		return reco_seq;
	}
	public void setReco_seq(int reco_seq) {
		this.reco_seq = reco_seq;
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
	public String getReco_date() {
		return reco_date;
	}
	public void setReco_date(String reco_date) {
		this.reco_date = reco_date;
	}
	public String getReco_memo() {
		return reco_memo;
	}
	public void setReco_memo(String reco_memo) {
		this.reco_memo = reco_memo;
	}
	public RecommendDTO() {
		super();
	}
	public RecommendDTO(int reco_seq, String mem_id, int sup_seq, String reco_date, String reco_memo) {
		super();
		this.reco_seq = reco_seq;
		this.mem_id = mem_id;
		this.sup_seq = sup_seq;
		this.reco_date = reco_date;
		this.reco_memo = reco_memo;
	}
	
	
}
