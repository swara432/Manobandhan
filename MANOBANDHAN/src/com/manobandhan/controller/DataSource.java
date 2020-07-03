package com.manobandhan.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class DataSource {

  
	private static DataSource datasource;
    private BasicDataSource basicDataSource;

	private DataSource(){
		try (InputStream fileInputStream = getClass().getClassLoader().getResourceAsStream("application.properties");){
			Properties properties = new Properties();
        	properties.load(fileInputStream);
			
        	System.out.println("Driver Class Name ==>>"+properties.getProperty("driver-class-name"));
			
			basicDataSource = new BasicDataSource();
	    	basicDataSource.setDriverClassName(properties.getProperty("driver-class-name"));
	    	basicDataSource.setUsername(properties.getProperty("username"));
	    	basicDataSource.setPassword(properties.getProperty("password"));
	    	basicDataSource.setUrl(properties.getProperty("url"));
	    	
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch(IOException ioe) {
	       ioe.printStackTrace();
	    } 
    }

    public static DataSource getInstance() {
        if (datasource == null) {
            datasource = new DataSource();
            return datasource;
        } else {
            return datasource;
        }
    }

    public Connection getConnection()  {
        try {
			return this.basicDataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
    }
}