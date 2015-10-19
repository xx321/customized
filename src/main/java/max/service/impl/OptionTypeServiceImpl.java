package max.service.impl;

import java.util.ArrayList;
import java.util.List;

import max.dao.OptionTypeDaoI;
import max.model.Moptiontype;
import max.pageModel.Optiontype;
import max.service.OptionTypeServiceI;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class OptionTypeServiceImpl implements OptionTypeServiceI {

	@Autowired
	private OptionTypeDaoI optionTypeDao;

	@Override
	@Cacheable(value = "optionTypeServiceCache", key = "'optionTypeList'")
	public List<Optiontype> getOptionTypeList() {
		List<Moptiontype> l = optionTypeDao.find("from Moptiontype o");
		List<Optiontype> ol = new ArrayList<Optiontype>();
		if (l != null && l.size() > 0) {
			for (Moptiontype o : l) {
				Optiontype ot = new Optiontype();
				BeanUtils.copyProperties(o, ot);
				ol.add(ot);
			}
		}
		return ol;
	}

	@Override
	public Optiontype get(String typeId) {
		Optiontype type = new Optiontype();
		Moptiontype m = optionTypeDao.getById(typeId);
		if (m!=null)
			BeanUtils.copyProperties(m, type);
		return type;
	}

}
