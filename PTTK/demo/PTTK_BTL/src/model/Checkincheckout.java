package model;

import java.sql.Time;

public class Checkincheckout {
	private int id;
	private Time giovao;
	private Time giora;
	private Mathangsudung[] mhsd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Time getGiovao() {
		return giovao;
	}
	public void setGiovao(Time giovao) {
		this.giovao = giovao;
	}
	public Time getGiora() {
		return giora;
	}
	public void setGiora(Time giora) {
		this.giora = giora;
	}
	public Mathangsudung[] getMhsd() {
		return mhsd;
	}
	public void setMhsd(Mathangsudung[] mhsd) {
		this.mhsd = mhsd;
	}
	
}
