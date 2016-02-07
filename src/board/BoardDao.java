package board;

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

import mybean.DBConnectionMgr;
import mybean.Dto;
import board.BoardDto;

public class BoardDao {

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	DBConnectionMgr pool = null;

	public BoardDao() {
		try {

			pool = DBConnectionMgr.getInstance();

		} catch (Exception err) {
			System.out.println("Dao() : " + err);
		}
	}

	public void setBoardRegister(BoardDto dto) {

		try {
			con = pool.getConnection();

			System.out.println("디비 접속");

			String sql = "insert into matternotice(level,noticepw,noticetitle,noticecontext,"
					+ "noticedate,mileage,answer,id,noticecount)" + "values(?,?,?,?,now(),?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.getLevel());
			stmt.setString(2, dto.getNoticepw());
			stmt.setString(3, dto.getNoticetitle());
			stmt.setString(4, dto.getNoticecontext());
			stmt.setInt(5, dto.getMileage());
			stmt.setString(6, dto.getAnswer());
			stmt.setString(7, dto.getId());
			stmt.setInt(8, 0);
			stmt.executeUpdate();
			System.out.println("게시판 생성 실행");

		} catch (Exception err) {
			System.out.println("setBoardRegister() : " + err);
		} finally {
		freeCon();
		}
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
	
	public List getSearchResultList(String keyField, String keyWord) {
		String sql = null;
		System.out.println("keyfield : " + keyField);
		System.out.println("keyWord : " + keyWord);
		 if(keyWord==null || keyWord.equals("null") || keyWord.isEmpty()){
	         sql="select * from matternotice order by noticenum desc";
	         
	      }else{
	         sql="select * from matternotice where " + keyField + " like '%"+keyWord+"%' order by noticenum desc";
	      }
		 System.out.println("sql : "+ sql);

		Vector vec = new Vector();

		try {
			con = pool.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNoticenum(rs.getInt("noticenum"));
				dto.setNoticetitle(rs.getString("noticetitle"));
				dto.setId(rs.getString("id"));
				dto.setNoticedate(rs.getDate("noticedate"));
				dto.setNoticecount(rs.getInt("noticecount"));
				dto.setLevel(rs.getString("level"));
			
				vec.add(dto);

			}

		} catch (Exception err) {
			System.out.println("getBoardList() : " + err);
		} finally {
			freeCon();
		}
		return vec;
	}
	
	public List getBoardList2() {
		String sql = null;

		
			sql = "select * from matternotice order by noticenum desc";


		Vector vec = new Vector();

		try {
			con = pool.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNoticenum(rs.getInt("noticenum"));
				dto.setNoticetitle(rs.getString("noticetitle"));
				dto.setId(rs.getString("id"));
				dto.setNoticedate(rs.getDate("noticedate"));
				dto.setNoticecount(rs.getInt("noticecount"));
				dto.setLevel(rs.getString("level"));
			
				vec.add(dto);

			}

		} catch (Exception err) {
			System.out.println("getBoardList() : " + err);
		} finally {
			freeCon();
		}
		return vec;
	}
	
	public List getBoardList(String keyField, String keyWord) {
		String sql = null;

		if (keyWord == null || keyWord.equals("null") || keyWord.isEmpty()) {
			sql = "select * from matternotice order by noticenum desc";

		} else {
			sql = "select * from matternotice where" + keyField + "like '%" + keyWord + "%' order by pos desc";
		}

		Vector vec = new Vector();

		try {
			con = pool.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNoticenum(rs.getInt("noticenum"));
				dto.setNoticetitle(rs.getString("noticetitle"));
				dto.setId(rs.getString("id"));
				dto.setNoticedate(rs.getDate("noticedate"));
				dto.setNoticecount(rs.getInt("noticecount"));
				dto.setLevel(rs.getString("level"));
			
				vec.add(dto);

			}

		} catch (Exception err) {
			System.out.println("getBoardList() : " + err);
		} finally {
			freeCon();
		}
		return vec;
	}

	public void increaseCount(int b_num) {
		try {
			con = pool.getConnection();

			String sql = "update matternotice set noticecount=noticecount+1 where noticenum=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			stmt.executeUpdate();
		} catch (Exception err) {
			System.out.println("increaseCount() : " + err);
		} finally {
			freeCon();
		}
	}

	public BoardDto getBoard(int b_num) {
		String sql;
		BoardDto result = new BoardDto();

		try {
			con = pool.getConnection();

			sql = "select * from matternotice where noticenum=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			rs = stmt.executeQuery();

			if (rs.next()) {
				result.setNoticenum(rs.getInt("noticenum"));
				result.setNoticecontext(rs.getString("noticecontext"));
				result.setId(rs.getString("id"));
				result.setNoticedate(rs.getDate("noticedate"));
				result.setNoticetitle(rs.getString("noticetitle"));
				result.setMileage(rs.getInt("mileage"));
				result.setAnswer(rs.getString("answer"));
				result.setLevel(rs.getString("level"));
				result.setNoticepw(rs.getString("noticepw"));
				result.setPos(rs.getInt("pos"));
				result.setPoslength(rs.getString("poslength"));
				result.setNoticecount(rs.getInt("noticecount"));
			
				
			}
		} catch (Exception err) {
			System.out.println("getBoard() : " + err);
		} finally {
			freeCon();
		}
		return result;
	}

	public boolean confirm(int b_num, String chk,String id) {
		String sql;
		Boolean flag = false;
		BoardDto result = new BoardDto();

		try {
			con = pool.getConnection();

			sql = "select answer,mileage from matternotice where noticenum=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			rs = stmt.executeQuery();
			int mileage = 0;
			
			
			if (rs.next() && chk.equals(rs.getString("answer"))) {
				flag=true;
				mileage=rs.getInt("mileage");
				System.out.println("mileage : "+ mileage);
				addMileage(id,mileage);
			}
			else{
				flag=false;
			}
			setTotalMatter(id);
		} catch (Exception err) {
			System.out.println("confirm() : " + err);
		} finally {
			freeCon();
		}
		return flag;
	}
	
	public void addMileage(String id,int mileage){
		String sql;
		Boolean flag = false;
		BoardDto result = new BoardDto();
		System.out.println("id : " +id + "mileage : " + mileage);
		
		
		try {
			con = pool.getConnection();
			
			sql = "update tbluser set mileage= mileage+?,sumatter= sumatter+1 where id= ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mileage);
			stmt.setString(2, id);
			stmt.executeUpdate();
			
			
		} catch (Exception err) {
			System.out.println("addMileage() : " + err);
		} finally {
			freeCon();
		}
	}
	
	public void setTotalMatter(String id){
		String sql;

		System.out.println(id +"님"+"totalmatter 1 증가" );
		
		try {
			con = pool.getConnection();
			
			sql = "update tbluser set totalmatter=totalmatter+1 where id= ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			
			stmt.executeUpdate();
			
		} catch (Exception err) {
			System.out.println("setTotalMatter() : " + err);
		} finally {
			freeCon();
		}
	}
	
	public String matterCheck(int b_num,String id) {
		String sql;
		Boolean flag = false;
	

		try {
			con = pool.getConnection();
			sql = "select * from matterCheck where matternum=? and user =?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			stmt.setString(2, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				return "중복";
			}
			flag = true;
			
			sql = "insert into matterCheck(matternum,user) values(?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			stmt.setString(2, id);
			stmt.executeUpdate();
			
			
			System.out.println(b_num+id);
			
			
			
		} catch (Exception err) {
			System.out.println("getBoard() : " + err);
		} finally {
			freeCon();
		}
		return "중복없음";
	}
	public void updateBoard(BoardDto dto,String id){
		try {

			con = pool.getConnection();
			System.out.println("디비 접속");
			String sql = "update matternotice set level=?,noticetitle=?, noticecontext=?,answer=?, mileage=? where noticepw=? and noticenum = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.getLevel());
			stmt.setString(2, dto.getNoticetitle());
			stmt.setString(3, dto.getNoticecontext());
			stmt.setString(4, dto.getAnswer());
			stmt.setInt(5, dto.getMileage());
			stmt.setString(6, dto.getNoticepw());
			stmt.setInt(7, dto.getNoticenum());
			
			stmt.executeUpdate();

		} catch (Exception err) {
			System.out.println("register.jsp : " + err);
		} finally {
			freeCon();
		}
		
	}
	
	public void dropBoard(int b_num,String pw){
		
		try {

			con = pool.getConnection();
			System.out.println("디비 접속");
			String sql = "delete from matternotice where noticenum = ? and noticepw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			stmt.setString(2, pw);

			int i = stmt.executeUpdate();
			System.out.println("deleteBoard 쿼리 실행");
		
			
			

		} catch (Exception err) {
			System.out.println("dropUser : " + err);
		} finally {
			freeCon();
		}
		
	}
	
	

}