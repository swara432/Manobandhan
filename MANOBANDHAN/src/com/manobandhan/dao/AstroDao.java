package com.manobandhan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.manobandhan.config.DbConnection;
import com.manobandhan.profile.AstroInfo;


public class AstroDao {
	public   AstroInfo getAstro(long infoId) throws SQLException, ClassNotFoundException {

		DbConnection dbcon = DbConnection.getInstance();
		Connection con = dbcon.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from astro_background where info_id=?");

		ps.setLong(1, infoId);

		ResultSet result = ps.executeQuery();

		AstroInfo astro = null;

		if (result.next()) {
			astro = new AstroInfo();
			
			astro.setInfoId(result.getInt(1)); 
		
			astro.setDOB(result.getString(4));
			astro.setBirthTime(result.getString(5));
			astro.setBirthPlace(result.getString(6));
			astro.setRashi(result.getString(7));
			astro.setNadi(result.getString(8));
			astro.setManglik(result.getString(9));
			astro.setGotra(result.getString(10));
			astro.setDevak(result.getString(11));
			astro.setGaan(result.getString(12));
	
			
			
		}

		con.close();

		return astro;
	}

}
