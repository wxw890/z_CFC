package mybean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import board.BoardDto;

public class Dao {
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	DBConnectionMgr pool = null;

	public Dao() {
		try {
			
			 pool = DBConnectionMgr.getInstance();

		} catch (Exception err) {
			System.out.println("Dao() : " + err);
		}
	}

	public void setRegister(Dto dto) {
		
		try {

			
			con = pool.getConnection();
			
			System.out.println("디비 접속");
			String sql = "insert into tbluser(ID,PW,NAME,AGE,GENDER,EMAIL,MILEAGE,SUMATTER,TOTALMATTER)" + "values(?,?,?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.getBo_id());
			stmt.setString(2, dto.getBo_pw());
			stmt.setString(3, dto.getBo_name());
			stmt.setString(4, dto.getBo_age());
			stmt.setString(5, dto.getBo_gender());
			stmt.setString(6, dto.getBo_email());
			stmt.setInt(7,0);
			stmt.setInt(8, 0);
			stmt.setInt(9, 0);
			stmt.executeUpdate();
			System.out.println("쿼리 실행");

		} catch (Exception err) {
			System.out.println("setRegister : " + err);
		} finally {
			freeCon();
		}
	}

	public boolean getUser(String id, String pass) {
		
		Boolean loginFlag = false;

		try {

			con = pool.getConnection();
			
			System.out.println("디비 접속");
			String sql = "select id,pw from tbluser where id=? and pw=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, pass);
			rs = stmt.executeQuery();
			try {
				if (rs.next()) {
					System.out.println("id pw correct");
					loginFlag = true;
				} else {
					System.out.println("id pw is not different");
					loginFlag = false;
				}
			} catch (Exception err) {
				err.printStackTrace();
			}

		} catch (Exception err) {
			System.out.println("register.jsp : " + err);
		} finally {
			freeCon();

		}
		return loginFlag;
	}

	public void freeCon() {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception err) {
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception err) {
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception err) {
			}
		}
	}
	
	public String idCheck(String id){
		String msg = "";

		try {

			con = pool.getConnection();
			
			System.out.println("디비 접속");
			
			String sql = "select id,pw from tbluser where id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			try {
				if (rs.next()) {
					msg ="아이디가 존재함";
					
				} else {
					msg ="아이디가 없음";
					
				}
			} catch (Exception err) {
				err.printStackTrace();
			}

		} catch (Exception err) {
			System.out.println("idcheck : " + err);
		} finally {
			freeCon();

		}
		return msg;
	}
	
	public Dto updateUser(String id){
		
		 String sql;
	      Dto result = new Dto();
	      
	      try{
	         con = pool.getConnection();
	         
	   
	         sql="select * from tbluser where id=?";
	         stmt=con.prepareStatement(sql);
	         stmt.setString(1,  id);
	         rs= stmt.executeQuery();
	         
	         if(rs.next()){
	            result.setBo_pw(rs.getString("pw"));
	            result.setBo_name(rs.getString("name"));
	            result.setBo_age(rs.getString("age"));
	            result.setBo_email(rs.getString("email"));
	            result.setBo_sumatter(rs.getInt("sumatter"));
	            result.setBo_totalmatter(rs.getInt("totalmatter"));
	         
	         }
	       
	         
	      }catch(Exception err){
	         System.out.println("getBoard() : " +err);
	      }finally{
	         freeCon();
	      }
	      return result;
		
	}
	
	public void updateInsert(Dto dto,String id){
		try {

			con = pool.getConnection();
			System.out.println("디비 접속");
			String sql = "update tbluser set pw=?,age=?, name=?, email=? where id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.getBo_pw());
			stmt.setString(2, dto.getBo_age());
			stmt.setString(3, dto.getBo_name());
			stmt.setString(4, dto.getBo_email());
			stmt.setString(5, id);
			
			stmt.executeUpdate();
			System.out.println("쿼리 실행");

		} catch (Exception err) {
			System.out.println("register.jsp : " + err);
		} finally {
			freeCon();
		}
		
	}
	
	public String idSearch(String name,String email){
		
		 String sql;
		 String msg = "";
	     
	      
	      try{
	         con = pool.getConnection();
	         
	   
	         sql="select id from tbluser where name=? and email=?";
	         stmt=con.prepareStatement(sql);
	         stmt.setString(1,  name);
	         stmt.setString(2,  email);
	         rs= stmt.executeQuery();
	         
	         if(rs.next()){
	           msg = rs.getString("id");
	         }
	         else{
	        	 msg = "일치하는 회원정보가 없습니다";
	         }
	         System.out.println("idsearch : "+ rs.getString("id"));
	         
	      }catch(Exception err){
	         System.out.println("idSearch() : " +err);
	      }finally{
	         freeCon();
	      }
	      return msg;
		
	}
	
	public String pwSearch(String id,String email){
		
		 String sql;
		 String msg = "";
	      
	      
	      try{
	         con = pool.getConnection();
	         
	         sql="select pw from tbluser where id=? and email=?";
	         stmt=con.prepareStatement(sql);
	         stmt.setString(1,  id);
	         stmt.setString(2,  email);
	         rs= stmt.executeQuery();
	         
	         if(rs.next()){
	           msg = rs.getString("pw");
	         }
	         else{
	        	 msg = "일치하는 회원정보가 없습니다";
	         }
	         System.out.println("pwsearch : "+ rs.getString("pw"));
	         
	      }catch(Exception err){
	         System.out.println("pwSearch() : " +err);
	      }finally{
	         freeCon();
	      }
	      return msg;
		
	}
	
	public Boolean dropUser(String id,String pw){
		Boolean flag = false;
		try {

			con = pool.getConnection();
			System.out.println("디비 접속");
			String sql = "delete from tbluser where id = ? and pw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, pw);

			int i = stmt.executeUpdate();
			System.out.println("쿼리 실행");
			System.out.println("i : " + i);
			if(i != 0){
				flag = true;
			}
			else{
				flag = false;
			}

		} catch (Exception err) {
			System.out.println("dropUser : " + err);
		} finally {
			freeCon();
		}
		return flag;
	}
	


}
