package dao.cm;

import java.util.List;
import java.util.ArrayList;
import org.hibernate.*;
import org.hibernate.criterion.*;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import po.cm.Competition;

public class CompetitionDAOImpl extends HibernateDaoSupport implements CompetitionDAOInt {
	private Competition comp;
	private CompetitionDAOInt compInt;
	

	public Competition getComp() {
		return comp;
	}

	public void setComp(Competition comp) {
		this.comp = comp;
	}

	@Override
	public void saveComp(Competition comp) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(comp);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Competition> findAllComp() throws Exception {
		// TODO Auto-generated method stub
		List<Competition> result = new ArrayList<Competition>();
		String f = "from Competition";
		result = this.getHibernateTemplate().find(f);
		return result;
	}

	@Override
	public void deleteByOid(Integer oid) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.getHibernateTemplate().get(Competition.class, oid));
	}

	@Override
	public Competition getByOid(Integer oid) throws Exception {
		// TODO Auto-generated method stub
		comp = (Competition) this.getHibernateTemplate().get(Competition.class,oid);
		return comp;
	}

	@Override
	public void updateComp(Competition comp) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(comp);
	}

	
	

}
