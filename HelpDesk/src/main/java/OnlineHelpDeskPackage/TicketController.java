package OnlineHelpDeskPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import HelpDeskPackage.DBconnection;

public class TicketController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
		public static boolean insertdata(int tid, int uid, String name, String topic, String subject, String description, String status) {
			
		boolean isSuccess = false;	
		try {
			//DB Connection Call
			con=DBconnection.getConnection();
			stmt=con.createStatement();
		
			//SQL Query
			String sql = "Insert into tickets values(0, 1,'"+name+"', '"+topic+"', '"+subject+"', '"+description+"', '"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<TicketModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <TicketModel> ticket = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			
			//Query
			String sql = "select * from tickets where id'"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int tid = rs.getInt(1);
				int uid = rs.getInt(2);
				String name = rs.getString(3);
				String topic = rs.getString(4);
				String subject = rs.getString(5);
				String description = rs.getString(6);
				String status = rs.getString(7);

				TicketModel tm = new TicketModel(tid, uid, name, topic, subject, description, status);
				ticket.add(tm);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return ticket;
	}

	//Get User Ticket
	public static List<TicketModel> getUserTicket (int uid){
		
		ArrayList <TicketModel> tickets = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			
			//Query
			String sql = "select * from tickets where uid'"+uid+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int tid = rs.getInt(1);
				int uid1 = rs.getInt(2);
				String name = rs.getString(3);
				String topic = rs.getString(4);
				String subject = rs.getString(5);
				String description = rs.getString(6);
				String status = rs.getString(7);

				TicketModel tm = new TicketModel(tid, uid1, name, topic, subject, description, status);
				tickets.add(tm);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return tickets;
	}
	
	//GetAll Data
	public static List<TicketModel> getAllTicket (){
		
		ArrayList <TicketModel> tickets = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			
			//Query
			String sql = "select * from tickets ";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int tid = rs.getInt(1);
				int uid = rs.getInt(2);
				String name = rs.getString(3);
				String topic = rs.getString(4);
				String subject = rs.getString(5);
				String description = rs.getString(6);
				String status = rs.getString(7);

				TicketModel tm = new TicketModel(tid, uid, name, topic, subject, description, status);
				tickets.add(tm);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return tickets;
		
	}
	

	//Delete Data
	public static boolean delete(int tid) {
		try {
			//DBConnection
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			//SQL Query
			String sql = "delete from tickets where tid='"+tid+"'";
			int rs = stmt.executeUpdate(sql);

			if(rs > 0) {
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

	//Update Data
	public static boolean updateDescription(int tid, String description) {
		try {
			//DBConnection
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			//SQL Query
			String sql = "update tickets set description='"+description+"' where tid='"+tid+"'";
			int rs = stmt.executeUpdate(sql);

			if(rs > 0) {
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