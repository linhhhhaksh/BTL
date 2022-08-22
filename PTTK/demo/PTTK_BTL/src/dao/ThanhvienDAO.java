package dao;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Hoten;
import model.Thanhvien;

public class ThanhvienDAO extends DAO{
	public ThanhvienDAO() {
		super();
	}
	
	public boolean kiemtraDangNhap(Thanhvien tv) {
		boolean kq = false;
		if(tv.getUsername().contains("true") || tv.getUsername().contains("=") ||
				tv.getPassword().contains("true") || tv.getPassword().contains("="))
			return false;
		String sql = "{call kiemtraDN(?,?)}";//su dung stored procedure
//		String sql = "  SELECT * FROM tblthanhvien a join tblhoten b on a.tblHotenID = b.tblHotenID\r\n" + 
//				"    WHERE username = usr AND password = pwd ";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1,tv.getUsername());
			cs.setString(2,tv.getPassword());
			ResultSet rs = cs.executeQuery();
			
			if(rs.next()) {
				tv.setId(rs.getInt("tblThanhvienID"));
				tv.setVaitro(rs.getString("vaitro"));
				//ho ten
				Hoten ht = new Hoten();
				ht.setHo(rs.getString("ho"));
				ht.setTendem(rs.getString("tendem"));
				ht.setTen(rs.getString("ten"));
				
				tv.setHt(ht);
				kq = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = false;
		}
		return kq;
	}
}
