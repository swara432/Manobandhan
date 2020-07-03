package com.manobandhan.dao;


	

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

import com.manobandhan.config.DbConnection;
import com.manobandhan.profile.PartnerInfo;

public class PartnerDao {

		public  PartnerInfo getPartner(long infoId) throws SQLException, ClassNotFoundException {

			DbConnection dbcon = DbConnection.getInstance();
			Connection con = dbcon.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from partner_ref where info_id=?");

			ps.setLong(1, infoId);

			ResultSet result = ps.executeQuery();

			PartnerInfo partner = null;

			if (result.next()) {
				partner = new PartnerInfo();
				
				partner.setInfoId(result.getInt(2)); 
			
				partner.setPAge(result.getString(4));
				partner.setPQualification(result.getString(5));
				partner.setPJobSpecification(result.getString(6));
				partner.setPAnnualIncome(result.getString(7));
				partner.setPComplexion(result.getString(8));
				partner.setPHeight(result.getString(9));
				partner.setPBodyType(result.getString(10));
				partner.setPDiet(result.getString(11));
				partner.setPManglik(result.getString(12));
				partner.setPMotherTongue(result.getString(13));
				partner.setPReligion(result.getString(14));
				partner.setPCaste(result.getString(15));
				partner.setPCountryOfResidence(result.getString(16));
				partner.setPState(result.getString(17));
				partner.setPMaritalStatus(result.getString(18));
				partner.setPResidenceStatus(result.getString(19));
				
			}

			con.close();

			return partner;
		}

	}


