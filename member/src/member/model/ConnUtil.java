package member.model;

import java.sql.*;

import javax.naming.*;
import javax.sql.*;

public class ConnUtil {
	private static DataSource dataSource;
	static {
		try {
			Context init = new InitialContext();
			dataSource = (DataSource) init
					.lookup("java:comp/env/jdbc/myOracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private ConnUtil() {
	}

	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

}
