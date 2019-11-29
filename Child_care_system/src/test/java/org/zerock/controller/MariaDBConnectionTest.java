package org.zerock.controller;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MariaDBConnectionTest {

	private static final String DRIVER = 
			"org.mariadb.jdbc.Driver";
	private static final String URL = 
			"jdbc:log4jdbc:mariadb://bigmit.iptime.org:56000/testdb";
	private static final String USER = 
			"java";
	private static final String PW = 
			"java";
			
	
	@Test
	public void testConnection() throws Exception{
		
		Class.forName(DRIVER);
		
		try(Connection con = DriverManager.getConnection(URL, USER, PW)){
			
			System.out.println(con);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
