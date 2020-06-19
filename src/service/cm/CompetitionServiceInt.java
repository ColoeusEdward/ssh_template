package service.cm;
import po.cm.*;
import java.util.List;
import vo.cm.*;

public interface CompetitionServiceInt {
	public void saveComp(CompetitionVO compVo);
	public List<Competition> findAllBook();
	public void deleteComp(Competition comp);
	public void updateComp(Competition comp);
	public Competition findOneComp(Competition comp);
//	public List<Competition> queryComp(CompetitionVO compVo);
}
