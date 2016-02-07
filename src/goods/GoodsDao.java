

package goods;

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
import goods.GoodsDto;
/**
 * @date 2015.12.07 
 * @author 최미라, 박세연
 *
 */
public class GoodsDao {

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	DBConnectionMgr pool = null;
	/**
	 * GoodsDao클래스의 생성자 매서드입니다. DB를 연걸을 못하면 예외처리로 에러메세지를 보내준다.
	 * @param DBConnectionMgr pool pool을 통해 DB연결을 인스턴스 생성시 수행한다. 
	 * @return 없음
	 * 
	 */
	public GoodsDao() {
		
		try {

			pool = DBConnectionMgr.getInstance();

		} catch (Exception err) {
			System.out.println("Dao() : " + err);
		}
	}
	/**
	 * dto에 저장된 값을 매개변수로 가져와 sql문을 이용하여 DB에 값을 입력하는 메서드
	 * @param GoodsDto dto 마일리지 정보를 값이 저장된 dto를 매개변수로 가져와 사용한다.
	 * @param String sql DB sql문이다.
	 * 
	 */
	public void setGoodsRegister(GoodsDto dto) {
		
		try {
			con = pool.getConnection();

			System.out.println("디비 접속");

			String sql = "insert into goods(goods_num,goods_category,goods_name,goods_image,goods_content,goods_amount,goods_price,goods_date)" + "values(?,?,?,?,?,?,?,now())";
			stmt = con.prepareStatement(sql);
			System.out.println(dto.getGoods_num());
			stmt.setInt(1, dto.getGoods_num());
			stmt.setString(2, dto.getGoods_category());
			stmt.setString(3, dto.getGoods_name());
			stmt.setString(4, dto.getGoods_image());
			stmt.setString(5, dto.getGoods_content());
			stmt.setInt(6, dto.getGoods_amount());
			stmt.setInt(7, dto.getGoods_price());
			
		
			stmt.executeUpdate();
			System.out.println("게시판 생성 실행");

		} catch (Exception err) {
			System.out.println("상품등록 : " + err);
		} finally {
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
	}
	/**
	 * 각각의 함수들에서 finally문으로 반드시 실행되는 함수이다.
	 * rs, stmt, con을 닫아주는 역할을 한다.
	 * 
	 */
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
	
	/**
	 * mileage shop에 상품들의 리스트를 출력해주는 메서드이다.
	 * 
	 */
	   public List getGoodsList(String keyField, String keyWord){
		   

		  String sql=null;
		  
		  if(keyWord==null || keyWord.equals("null") || keyWord.isEmpty()){
		     sql="select * from goods order by goods_num desc";
		     
		  }else{
		     sql="select * from goods where" + keyField + "like '%"+keyWord+"%' order by pos desc";
		  }
		  
		  Vector vec = new Vector();
		  
		  try{
			  con = pool.getConnection();
			  stmt = con.prepareStatement(sql);
			  rs = stmt.executeQuery();
		     
		     while(rs.next()){
		        GoodsDto dto = new GoodsDto();
		        dto.setGoods_num(rs.getInt("goods_num"));
		        dto.setGoods_category(rs.getString("goods_category"));
		        dto.setGoods_name(rs.getString("goods_name"));
		        dto.setGoods_image(rs.getString("goods_image"));
		        dto.setGoods_content(rs.getString("goods_content"));
		        dto.setGoods_amount(rs.getInt("goods_amount"));
		        dto.setGoods_date(rs.getDate("goods_date"));
		        dto.setGoods_price(rs.getInt("goods_price"));
		
		        vec.add(dto);
		        
		        
		     }
		     
		  }catch(Exception err){
		     System.out.println("getBoardList() : " + err);
		      }finally{
		         freeCon();
		      }
		      return vec;
		   }

	
	
	   
	   /**
		 * mileage shop에 있는 상품들에서 선택한 상품의 가격 및 이름 등의 정보를 출력해주는 메서드
		 * @param int g_num 지정된 삼품 순서 번호를 매개변수로 가져와서 sql문을 통해 선택한 상품을 찾는다.
		 * 
		 */
	   public GoodsDto getGoods(int g_num){
			String sql;
			GoodsDto result = new GoodsDto();
			
			      
			try{
				con = pool.getConnection();
							   
				sql="select * from goods where goods_num=?";
				stmt=con.prepareStatement(sql);
				stmt.setInt(1, g_num);
				rs= stmt.executeQuery();
				 
				if(rs.next()){
					
			        result.setGoods_num(rs.getInt("goods_num"));
			        result.setGoods_category(rs.getString("goods_category"));
			        result.setGoods_name(rs.getString("goods_name"));
			        result.setGoods_image(rs.getString("goods_image"));
			        result.setGoods_content(rs.getString("goods_content"));
			        result.setGoods_amount(rs.getInt("goods_amount"));
			        result.setGoods_date(rs.getDate("goods_date"));
			        result.setGoods_price(rs.getInt("goods_price"));
					
				}
			}catch(Exception err){
				System.out.println("getGoods() : " +err);
			}finally{
				freeCon();
			}		
			return result;
			
	   }
	   
	   /**
		 * mileage shop에 있는 상품들에서 선택한 상품을 삭제해주는 메서드이다.
		 * @param int b_num 지정된 삼품 순서 번호를 매개변수로 가져와서 sql문을 통해 선택한 상품을 삭제한다.
		 * 
		 */
	   public void deleteBoard(int b_num){
			
			String sql = "delete from goods where GOODS_NUM=?";
			
				
			try{
				con = pool.getConnection();
				stmt = con.prepareStatement(sql);
				stmt.setInt(1, b_num);
				stmt.executeUpdate();
			}
			catch(Exception err){
				System.out.println("deleteBoard() : " + err);
			}
			finally{ freeCon(); }
		}
	   
	

		  
}