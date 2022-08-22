package model;

public class Tkdoanhthu {
	private int id;
	private float tongtien;
	private float tongsoluong;
	private Hoadonthanhtoan[] hdtt;
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
	public float getTongsoluong() {
		return tongsoluong;
	}
	public void setTongsoluong(float tongsoluong) {
		this.tongsoluong = tongsoluong;
	}
	public Hoadonthanhtoan[] getHdtt() {
		return hdtt;
	}
	public void setHdtt(Hoadonthanhtoan[] hdtt) {
		this.hdtt = hdtt;
	}
	
	
}
