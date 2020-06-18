package service.cm;

import java.util.List;
import java.util.ArrayList;
import po.cm.Competition;
import vo.cm.CompetitionVO;
import dao.cm.*;

public class CompetitionServiceImpl implements CompetitionServiceInt {
	private Competition comp;
	private CompetitionDAOInt compDaoInt;
	

	public Competition getComp() {
		return comp;
	}

	public void setComp(Competition comp) {
		this.comp = comp;
	}

	public CompetitionDAOInt getCompDaoInt() {
		return compDaoInt;
	}

	public void setCompDaoInt(CompetitionDAOInt compDaoInt) {
		this.compDaoInt = compDaoInt;
	}

	@Override
	public void saveComp(CompetitionVO compVo) {
		// TODO Auto-generated method stub
		comp.setCompetitionName(compVo.getCompName());
		comp.setCompetitionIntroduction(compVo.getCompInfo());
		comp.setEqname(compVo.getEQName());
		comp.setFiledType(compVo.getFiledType());
		comp.setHolderName(compVo.getHolderName());
		try{
			compDaoInt.saveComp(comp);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public List<Competition> findAllBook() {
		// TODO Auto-generated method stub
		List<Competition> result = new ArrayList<Competition>();
		try{
			result = compDaoInt.findAllComp();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void deleteComp(Competition comp) {
		// TODO Auto-generated method stub
		try{
			compDaoInt.deleteByOid(comp.getCompetitionId());
		}catch(Exception e){
			e.printStackTrace();
		}

	}

	@Override
	public void updateComp(Competition comp) {
		// TODO Auto-generated method stub
		try{
			compDaoInt.updateComp(comp);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		

	}

	@Override
	public Competition findOneComp(Competition comp) {
		// TODO Auto-generated method stub
		Competition compOne = new Competition();
		try{
			compOne = compDaoInt.getByOid(comp.getCompetitionId());
		}catch(Exception e){
			e.printStackTrace();
		}
		return compOne;
	}

	@Override
	public List<Competition> queryComp(CompetitionVO compVo) {
		// TODO Auto-generated method stub
		Competition compOne = new Competition();
		compOne.setCompetitionName(compVo.getCompName());
		compOne.setCompetitionIntroduction(compVo.getCompInfo());
		List<Competition> result = new ArrayList<Competition>();
		try{
			result = compDaoInt.queryComp(compOne);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

}