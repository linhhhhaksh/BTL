package dao;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Mathang;

public class MathangDAO extends DAO{
	public MathangDAO() {
		super();
	}
	
//	lay danh sach mat hang dang duoc ban
	public ArrayList<Mathang> getMathang(){
		ArrayList<Mathang> kq = null;
		String sql = "select * from tblMathang";

		try {
			CallableStatement cs = con.prepareCall(sql);
			ResultSet rs = cs.executeQuery();
			
			while(rs.next()) {
				if(kq == null) {
					kq = new ArrayList<Mathang>();
					
				}
				Mathang mh = new Mathang();
				mh.setId(rs.getInt("tblMathangID"));
				mh.setTenmathang(rs.getString("tenmathang"));
				mh.setMa(rs.getString("ma"));
				mh.setGianban(rs.getFloat("giaban"));
				mh.setGianhap(rs.getFloat("gianhap"));
				mh.setNhanhieu(rs.getString("nhanhieu"));
				mh.setNhacungcap(rs.getString("nhacungcap"));
				kq.add(mh);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return kq;
	}
	//lay chi tiet mat hang
	public boolean checkmathang(Mathang mh) {
		boolean kq = false;
//		if(mh.getMa().contains("true") || mh.getMa().contains("=")) {
//			return false;
//		}
		String sql = "select * from tblMathang where tblMathangID = ?";
		try {
			CallableStatement cs = con.prepareCall(sql);
//			cs.setString(1, mh.getMa());
			cs.setInt(1, mh.getId());
			ResultSet rs = cs.executeQuery();
			
			if(rs.next()) {
				mh.setId(rs.getInt("tblMathangID"));
				mh.setTenmathang(rs.getString("tenmathang"));
				mh.setMa(rs.getString("ma"));
				mh.setGianban(rs.getFloat("giaban"));
				mh.setGianhap(rs.getFloat("gianhap"));
				mh.setNhanhieu(rs.getString("nhanhieu"));
				mh.setNhacungcap(rs.getString("nhacungcap"));
				kq = true;
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			kq = false;
		}
		
		return kq;
	}
	
	public boolean luuSuaTTMH(Mathang mh) {
		boolean kq = false;
		String sqlktra= "select exists (select * from tblMathang where tblMathangID = ?)";
		String sqlSua = "update tblMathang set tenmathang=?, ma=?, giaban=?, gianhap=?, nhacungcap=?, nhanhieu=? where tblMathangID=?";
		try {
			this.con.setAutoCommit(false);
			PreparedStatement psktra = con.prepareStatement(sqlktra);
			psktra.setInt(1, mh.getId());
			ResultSet rs = psktra.executeQuery();
			if(rs.next()) {
				PreparedStatement psSua = con.prepareStatement(sqlSua);
				psSua.setString(1, mh.getTenmathang());
				psSua.setString(2, mh.getMa());
				psSua.setFloat(3, mh.getGianban());
				psSua.setFloat(4, mh.getGianhap());
				psSua.setString(5, mh.getNhanhieu());
				psSua.setString(6, mh.getNhacungcap());
				psSua.setInt(7, mh.getId());
				psSua.executeUpdate();
			}
			this.con.commit();
			kq = true;
			
		} catch (Exception e) {
			try{
                this.con.rollback();
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
            kq=false;
            e.printStackTrace();
		}finally{
            try{
                this.con.setAutoCommit(true);
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
        }       
		
		return kq;
	}
	public boolean xoaMH(Mathang mh) {
		boolean kq = false;
		String sqlktra= "select exists (select * from tblMathang where tblMathangID = ?)";
		String sqlxoa= "delete from tblmathang where tblMathangID = ?";
		
		try {
			this.con.setAutoCommit(false);
			PreparedStatement psKtra = con.prepareStatement(sqlktra);
			psKtra.setInt(1, mh.getId());
			ResultSet rs = psKtra.executeQuery();
			if(rs.next()) {
				PreparedStatement psXoa = con.prepareStatement(sqlxoa);
				psXoa.setInt(1, mh.getId());
				psXoa.executeUpdate();
			}
			this.con.commit();
			kq = true;
		} catch (Exception e) {
			try{
                this.con.rollback();
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
            kq=false;
            e.printStackTrace();
		}finally{
            try{
                this.con.setAutoCommit(true);
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
        }       
		
		return kq;
	}
	public boolean addMH(Mathang mh) {
		boolean kq = false;
		String sqlAdd = "insert into tblMathang(tblMathangID, tenmathang, ma, giaban, gianhap, nhacungcap, nhanhieu)"
				+ " values(?,?,?,?,?,?,?)";
		try {
				this.con.setAutoCommit(false);
				PreparedStatement psAdd = con.prepareStatement(sqlAdd);
				psAdd.setInt(1, mh.getId());
				psAdd.setString(2, mh.getTenmathang());
				psAdd.setString(3, mh.getMa());
				psAdd.setFloat(4, mh.getGianban());
				psAdd.setFloat(5, mh.getGianhap());
				psAdd.setString(6, mh.getNhacungcap());
				psAdd.setString(7, mh.getNhanhieu());
				psAdd.executeUpdate();
				this.con.commit();
				kq = true;
			
		} catch (Exception e) {
			try{
                this.con.rollback();
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
            kq=false;
            e.printStackTrace();
		}finally{
            try{
                this.con.setAutoCommit(true);
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
        }      
		
		return kq;
	}
}
