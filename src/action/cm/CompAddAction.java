package action.cm;

import com.opensymphony.xwork2.ActionSupport;
import service.cm.*;
import vo.cm.*;

public class CompAddAction extends ActionSupport {
	private CompetitionServiceImpl compService;
	private CompetitionVO compVo;
	public CompetitionServiceImpl getCompService() {
		return compService;
	}
	public void setCompService(CompetitionServiceImpl compService) {
		this.compService = compService;
	}
	public CompetitionVO getCompVo() {
		return compVo;
	}
	public void setCompVo(CompetitionVO compVo) {
		this.compVo = compVo;
	}
	
	public String execute() throws Exception 
	{
//		bookService = new BookServiceImpl();
		compService.saveComp(compVo);
		System.out.print(compVo.getCompName());
		return "success";
	}
	
	
}
