package action.cm;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import po.cm.*;
import service.cm.*;
import vo.cm.*;
import com.opensymphony.xwork2.ActionContext;

public class CompQueryAction extends ActionSupport {
	private CompetitionServiceImpl compService;
	private CompetitionVO compVo;
	private Competition comp;
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
	public Competition getComp() {
		return comp;
	}
	public void setComp(Competition comp) {
		this.comp = comp;
	}
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception 
	{
//		bookService = new BookServiceImpl();
//		Map req = (Map)ActionContext.getContext().get("request");
//		req.put("booklist", compService.queryComp(compVo));	
		return "success";
	}
	
	
}
