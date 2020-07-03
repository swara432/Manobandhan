package Profile;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import Service.DbConnection;

public class ProfileDao {

	public static ProfileInfo getProfile(int infoId) throws SQLException, ClassNotFoundException {

		DbConnection dbcon = DbConnection.getInstance();
		Connection con = dbcon.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from personal_info where info_id=?");

		ps.setInt(1, infoId);

		ResultSet result = ps.executeQuery();

		ProfileInfo profile = null;

		if (result.next()) {
			profile = new ProfileInfo();
			profile.setInfoId(result.getInt(2)); // check
			profile.setManageBy(result.getString(3));
			profile.setName(result.getString(4));
			profile.setAge(result.getInt(5));
			profile.setMarital_Status(result.getString(6));
			profile.setQualification(result.getString(7));
			profile.setAnnual_Income(result.getString(8));
			profile.setHeight(result.getString(9));
			profile.setWeight(result.getString(10));
			profile.setBlood_Group(result.getString(11));
			profile.setComplexion(result.getString(12));
			profile.setLanguage(result.getString(13));
			profile.setBody_Type(result.getString(14));
			profile.setMother_Tounge(result.getString(15));
			profile.setDrink(result.getString(16));
			profile.setSmoke(result.getString(17));
			//profile.setPhoto(result.getString(18));
				
		}

		con.close();

		return profile;
	}

}
