package model;

public class Thanhvien {
	private int id;
	private String email;
	private String phone;
	private String ghichu;
	private String username;
	private String password;
	private String vaitro;
	private Diachi dc;
	private Hoten ht;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getVaitro() {
		return vaitro;
	}
	public void setVaitro(String vaitro) {
		this.vaitro = vaitro;
	}
	public Diachi getDc() {
		return dc;
	}
	public void setDc(Diachi dc) {
		this.dc = dc;
	}
	public Hoten getHt() {
		return ht;
	}
	public void setHt(Hoten ht) {
		this.ht = ht;
	}
	
	
}
