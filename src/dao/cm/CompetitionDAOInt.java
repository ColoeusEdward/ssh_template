package dao.cm;
import java.util.List;

import po.cm.Competition;

public interface CompetitionDAOInt {
	public void saveComp(Competition comp) throws Exception;
	public List<Competition> findAllComp() throws Exception;
	public void deleteByOid(Integer oid) throws Exception;
	public Competition getByOid(Integer oid) throws Exception;
	public void updateComp(Competition comp) throws Exception;
	public List<Competition> queryComp(Competition comp) throws Exception;
}
