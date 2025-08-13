package HelpDeskPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SignUpControl {
	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt =null;
	private static ResultSet rs=null;
	
	public static boolean validate(String email,String password) {
		
		try {
			con=DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from signup where email='"+email+"' and password='"+password+"'";
			rs=	stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
public static boolean validate2(String email,String password) {
		
		try {
			con=DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where email='"+email+"' and password='"+password+"'";
			rs=	stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	
	//Insert Data Function
	public static boolean insertData(String firstname, String lastname, String email, String password, String confirmpassword,
			String phonenumber) {
		boolean isSuccess = false;
		
		try {
			// DB CONNECTION CALL
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
	
				String sql = "insert into signup values (0,'"+firstname+"','"+lastname+"','"+email+"','"+password+"','"+confirmpassword+"','"+phonenumber+"')";
				int rs=stmt.executeUpdate(sql);
				if (rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		return isSuccess;
	}
	
	
	//update password
	public static boolean updatepassword(String password,String email) {
		try {
			// DB CONNECTION CALL
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//SQL query
			String sql ="update signup set password='"+password+"',confirmpassword='"+password+"'"
						+"where email='"+email+"'";
			int rs =stmt.executeUpdate(sql);
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}

