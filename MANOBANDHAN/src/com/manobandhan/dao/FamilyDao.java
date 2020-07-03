package com.manobandhan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.manobandhan.config.DbConnection;
import com.manobandhan.profile.FamilyInfo;

public class FamilyDao {
	public  FamilyInfo getFamily(long infoId) throws SQLException, ClassNotFoundException {

		DbConnection dbcon = DbConnection.getInstance();
		Connection con = dbcon.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from family_background where info_id=?");

		ps.setLong(1, infoId);

		ResultSet result = ps.executeQuery();

		FamilyInfo family = null;

		if (result.next()) {
			family = new FamilyInfo();
			
			family.setInfoId(result.getInt(1)); 
		
			family.setFname(result.getString(4));
			family.setFOccupation(result.getString(5));
			family.setMname(result.getString(6));
			family.setMOccupation(result.getString(7));
			family.setBrothers(result.getString(8));
			family.setSisters(result.getString(9));
			family.setUncle(result.getString(10));
			family.setUncle(result.getString(11));
			family.setAunt(result.getString(12));
			family.setFIncome(result.getString(13));
			;
			
		}

		con.close();

		return family;
	}

}
