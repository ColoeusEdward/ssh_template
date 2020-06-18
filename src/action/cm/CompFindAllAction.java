package action.cm;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import service.cm.*;
import com.opensymphony.xwork2.ActionContext;

public class CompFindAllAction extends ActionSupport {
	private CompetitionServiceInt compService;
	
	public CompetitionServiceInt getCompService() {
		return compService;
	}


	public void setCompService(CompetitionServiceInt compService) {
		this.compService = compService;
	}

	
//	public CompetitionServiceImpl getCompService() {
//		return compService;
//	}
//
//
//	public void setCompService(CompetitionServiceImpl compService) {
//		this.compService = compService;
//	}


	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
//		bookService = new BookServiceImpl();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("complist", compService.findAllBook());
		System.out.println("fccc");
		return "success";
	}


	
	
}
