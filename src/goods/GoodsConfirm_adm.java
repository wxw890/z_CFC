package goods;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import register.Command;

public class GoodsConfirm_adm implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
		
		//upload
		String savePath = "F:/JspWorkSpace/z_CFC/WebContent/upload"; // 업로드 경로

		int sizeLimit = 5 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(req, savePath, sizeLimit, "euc-kr", new DefaultFileRenamePolicy());
		
		GoodsDao dao=new GoodsDao();
		GoodsDto dto=new GoodsDto();
		
		// 넘어오는 파라메터
		dto.setGoods_category(multi.getParameter("g_cate"));
		dto.setGoods_name(multi.getParameter("g_name"));
		dto.setGoods_content(multi.getParameter("g_content"));
		dto.setGoods_price(Integer.parseInt(multi.getParameter("g_price")));
		dto.setGoods_amount(Integer.parseInt(multi.getParameter("g_amount")));
		
		// 넘어오는 파일 이름
		String g_img1 = multi.getFilesystemName("g_img1");
		dto.setGoods_image(g_img1);
				
		dao.setGoodsRegister(dto);		
		
		return "/admin/mileage/admin_goods_confirm.jsp";
	}

}
