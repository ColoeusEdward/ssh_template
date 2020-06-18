package action.cm;

import com.opensymphony.xwork2.ActionSupport;
import service.cm.*;
import vo.cm.*;

public class CompCancelAction extends ActionSupport {
	
	public String execute() throws Exception 
	{
//		bookService = new BookServiceImpl();
//		compService.saveComp(compVo);
		System.out.print("ggg");
		return "success";
	}
}
