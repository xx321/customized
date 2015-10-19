package max.dao.impl;

import max.dao.CustomerDaoI;
import max.model.Mcustomer;

import org.springframework.stereotype.Repository;
import sy.dao.impl.BaseDaoImpl;

@Repository
public class CustomerDaoImpl extends BaseDaoImpl<Mcustomer> implements CustomerDaoI {

	@Override
	public Mcustomer getById(String id) {
		return super.get(Mcustomer.class, id);
	}
	
}
