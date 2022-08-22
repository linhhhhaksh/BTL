package model;

public class Hoadonthanhtoan {
	private int id;
	private float tongtien;
	private LeTan lt;
	private Khachhang kh;
	private Checkincheckout[] cico;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getTongtien() {
		return tongtien;
	}
	public void setTongtien(float tongtien) {
		this.tongtien = tongtien;
	}
	public LeTan getLt() {
		return lt;
	}
	public void setLt(LeTan lt) {
		this.lt = lt;
	}
	public Khachhang getKh() {
		return kh;
	}
	public void setKh(Khachhang kh) {
		this.kh = kh;
	}
	public Checkincheckout[] getCico() {
		return cico;
	}
	public void setCico(Checkincheckout[] cico) {
		this.cico = cico;
	}
	
}
