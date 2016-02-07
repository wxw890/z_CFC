

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
 * @author �̶ֹ�, �ڼ���
 *
 */
public class GoodsDao {

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	DBConnectionMgr pool = null;
	/**
	 * GoodsDaoŬ������ ������ �ż����Դϴ�. DB�� ������ ���ϸ� ����ó���� �����޼����� �����ش�.
	 * @param DBConnectionMgr pool pool�� ���� DB������ �ν��Ͻ� ������ �����Ѵ�. 
	 * @return ����
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
	 * dto�� ����� ���� �Ű������� ������ sql���� �̿��Ͽ� DB�� ���� �Է��ϴ� �޼���
	 * @param GoodsDto dto ���ϸ��� ������ ���� ����� dto�� �Ű������� ������ ����Ѵ�.
	 * @param String sql DB sql���̴�.
	 * 
	 */
	public void setGoodsRegister(GoodsDto dto) {
		
		try {
			con = pool.getConnection();

			System.out.println("��� ����");

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
			System.out.println("�Խ��� ���� ����");

		} catch (Exception err) {
			System.out.println("��ǰ��� : " + err);
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
	 * ������ �Լ��鿡�� finally������ �ݵ�� ����Ǵ� �Լ��̴�.
	 * rs, stmt, con�� �ݾ��ִ� ������ �Ѵ�.
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
	 * mileage shop�� ��ǰ���� ����Ʈ�� ������ִ� �޼����̴�.
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
		 * mileage shop�� �ִ� ��ǰ�鿡�� ������ ��ǰ�� ���� �� �̸� ���� ������ ������ִ� �޼���
		 * @param int g_num ������ ��ǰ ���� ��ȣ�� �Ű������� �����ͼ� sql���� ���� ������ ��ǰ�� ã�´�.
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
		 * mileage shop�� �ִ� ��ǰ�鿡�� ������ ��ǰ�� �������ִ� �޼����̴�.
		 * @param int b_num ������ ��ǰ ���� ��ȣ�� �Ű������� �����ͼ� sql���� ���� ������ ��ǰ�� �����Ѵ�.
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