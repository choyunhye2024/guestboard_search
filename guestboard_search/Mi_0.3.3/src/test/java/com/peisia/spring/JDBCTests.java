package com.peisia.spring;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		try (Connection con = DriverManager.getConnection(
//							"jdbc:oracle:thin:@localhost:1521:ORCL",
				"jdbc:mysql://localhost:3306/my_cat", "root", "root")) {
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
