package max.dao.impl;

import max.dao.OptionTypeDaoI;
import max.model.Moptiontype;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

import sy.dao.impl.BaseDaoImpl;

@Repository
public class OptiontypeDaoImpl extends BaseDaoImpl<Moptiontype> implements OptionTypeDaoI {

	@Override
	@Cacheable(value = "optionTypeDaoCache", key = "#id")
	public Moptiontype getById(String id) {
		return super.get(Moptiontype.class, id);
	}

}
