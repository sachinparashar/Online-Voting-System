package databaseconnection;
import java.sql.*;

public class databasecon
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}
