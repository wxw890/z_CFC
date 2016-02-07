package register;

import javax.servlet.RequestDispatcher;

import board.BoardRead;
import board.DeleteBoard;
import board.ProBoard;
import board.ProConfirm;
import board.RegBoard;
import board.UpdateBoard;
import board.WriteProc;
import board.goBoard1;
import goods.Contact;
import goods.GoodsConfirm_adm;
import goods.GoodsDelete_adm;
import goods.GoodsList;
import goods.GoodsList_adm;
import goods.GoodsModify_adm;
import goods.GoodsRead_adm;
import goods.GoodsUpdateProc_adm;
import goods.GoodsUpdate_adm;
import goods.GoodsView;
import goods.GoodsWrite_adm;
import goods.ShopList;
import goods.ShopView;


public class CommandFactory {
	private CommandFactory(){}
	
	private static CommandFactory instance = new CommandFactory();
	
	public static CommandFactory newInstance(){
		return instance;
	}
	
	public Command createCommand(String cmd){
		try{
		if(cmd.equals("REGISTER")){
			System.out.println("REGISTER");
			return new RegConfirm();
		}
		else if(cmd.equals("REGPROC")){
			System.out.println("REGPROC");
			return new RegProc();
		}
		else if(cmd.equals("REGCHK")){
			System.out.println("REGCHK");
			return new RegCheck();
		}
		
		else if(cmd.equals("LOGIN")){
			System.out.println("LOGIN");
			return new Login();
		}
		else if(cmd.equals("HOME")){
			System.out.println("HOME");
			return new RegHome();
		}
		else if(cmd.equals("PROBOARD")){
			System.out.println("PROBOARD");
			return new ProBoard();
		}
		else if(cmd.equals("LOGINPROC")){
			System.out.println("LOGIN");
			return new LoginProc();
		}
		else if(cmd.equals("LOGOUT")){
			System.out.println("LOGOUT");
			return new LogOutProc();
		}
		else if(cmd.equals("WRITEPRO")){
			System.out.println("WRITEPRO");
			return new WriteProc();
		}
		else if(cmd.equals("REGBOARD")){
			System.out.println("REGBOARD");
			return new RegBoard();
		}
		
		else if(cmd.equals("READPRO")){
			System.out.println("READPRO");
			return new BoardRead();
		}
		else if(cmd.equals("IDCHECK")){
			System.out.println("IDCHECK");
			return new IdCheck();
		}
		else if(cmd.equals("UPDATEUSER")){
			System.out.println("UPDATEUSER");
			return new UpdateUser();
		}
		else if(cmd.equals("UPDATEPROC")){
			System.out.println("UPDATEPROC");
			return new UpdateInsert();
		}
		else if(cmd.equals("IDSEARCH")){
			System.out.println("IDSEARCH");
			return new IdSearch();
		}
		else if(cmd.equals("IDSEARCHPROC")){
			System.out.println("IDSEARCHPROC");
			return new IdSearchProc();
		}
		else if(cmd.equals("PWSEARCH")){
			System.out.println("PWSEARCH");
			return new PwSearch();
		}
		else if(cmd.equals("PWRESULT")){
			System.out.println("PWRESULT");
			return new PwSearchProc();
		}
		else if(cmd.equals("CONFIRM")){
			System.out.println("CONFIRM");
			return new ProConfirm();
		}
		else if(cmd.equals("GOBOARD")){
			System.out.println("GOBOARD");
			return new goBoard1();
		}
		else if(cmd.equals("MYPROFILE")){
			System.out.println("MYPROFILE");
			return new myProfile();
		}
		else if(cmd.equals("GODROP")){
			System.out.println("GODROP");
			return new GoDrop();
		}
		else if(cmd.equals("DROPUSER")){
			System.out.println("DROPUSER");
			return new DropUser();
		}
		else if(cmd.equals("ALTERBOARD")){
			System.out.println("ALTERBOARD");
			return new UpdateBoard();
		}
		else if(cmd.equals("DELETEBOARD")){
			System.out.println("DELETEBOARD");
			return new DeleteBoard();
		}

		/* 마일리지 */
		else if(cmd.equals("ShopList")){
			System.out.println("ShopList");
			return new ShopList();
		}

		else if(cmd.equals("ShopView")){
			System.out.println("ShopView");
			return new ShopView();
		}
		
		else if(cmd.equals("GoodsList")){
			System.out.println("GoodsList");
			return new GoodsList();
		}
		
		else if(cmd.equals("GoodsView")){
			System.out.println("GoodsView");
			return new GoodsView();
		}
		
		else if(cmd.equals("GoodsList_adm")){
			System.out.println("GoodsList_adm");
			return new GoodsList_adm();
		}
		
		else if(cmd.equals("GoodsModify_adm")){
			System.out.println("GoodsModify_adm");
			return new GoodsModify_adm();
		}
		
		else if(cmd.equals("GoodsWrite_adm")){
			System.out.println("GoodsWrite_adm");
			return new GoodsWrite_adm();
		}
		
		else if(cmd.equals("GoodsConfirm_adm")){
			System.out.println("GoodsConfirm_adm");
			return new GoodsConfirm_adm();
		}
		
		
		else if(cmd.equals("GoodsRead_adm")){
			System.out.println("GoodsRead_adm");
			return new GoodsRead_adm();
		}
		else if(cmd.equals("GoodsDelete_adm")){
			System.out.println("GoodsDelete_adm");
			return new GoodsDelete_adm();
		}
		else if(cmd.equals("GoodsUpdate_adm")){
			System.out.println("GoodsUpdate_adm");
			return new GoodsUpdate_adm();
		}
		else if(cmd.equals("GoodsUpdateProc_adm")){
			System.out.println("GoodsUpdateProc_adm");
			return new GoodsUpdateProc_adm();
		}
	      else if(cmd.equals("Contact")){
	         System.out.println("Contact");
	         return new Contact();
	      }
	
		}catch(Exception err){
			err.printStackTrace();
		}
		
		
		return null;
	}
}
