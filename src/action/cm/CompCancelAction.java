package action.cm;

import com.opensymphony.xwork2.ActionSupport;
import service.cm.*;
import vo.cm.*;
import po.cm.*;

public class CompCancelAction extends ActionSupport {
	private Competition comp;
	private CompetitionServiceImpl compService;
	
	
	public Competition getComp() {
		return comp;
	}


	public void setComp(Competition comp) {
		this.comp = comp;
	}


	public CompetitionServiceImpl getCompService() {
		return compService;
	}


	public void setCompService(CompetitionServiceImpl compService) {
		this.compService = compService;
	}


	public String execute() throws Exception 
	{
//		bookService = new BookServiceImpl();
//		compService.saveComp(compVo);
		compService.deleteComp(comp);
		System.out.print("ggg");
		return "success";
	}
}
