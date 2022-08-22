package model;

public class Hoadonnhap {
	private int id;
	private int soluong;
	private Cungcap[] cc;
	private NVKho nvk;
	private NCC ncc;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public Cungcap[] getCc() {
		return cc;
	}
	public void setCc(Cungcap[] cc) {
		this.cc = cc;
	}
	public NVKho getNvk() {
		return nvk;
	}
	public void setNvk(NVKho nvk) {
		this.nvk = nvk;
	}
	public NCC getNcc() {
		return ncc;
	}
	public void setNcc(NCC ncc) {
		this.ncc = ncc;
	}
	
}
