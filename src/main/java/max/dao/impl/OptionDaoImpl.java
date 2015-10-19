package max.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.OptionDaoI;
import max.model.Moption;

import org.springframework.stereotype.Repository;

import sy.dao.impl.BaseDaoImpl;

@Repository
public class OptionDaoImpl extends BaseDaoImpl<Moption> implements OptionDaoI {

	@Override
	public List<Moption> findByPid(String pid) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pid", pid);
//		select * from moption m 
//		join moptiontype t on m.MOPTIONTYPE_ID=t.ID 
//		join moption p on m.pid=p.ID 
//		where p.id = :pid
		List<Moption> l = this.find("select distinct m from Moption m join fetch m.moptiontype t join fetch m.moption p where p.id=:pid order by m.seq", params);
		return l;
	}

	@Override
	public List<Moption> findListByTypdId(String typeId, Integer status) {
		String addWhere = "where t.id in (0,4,6)";
		Map<String, Object> params = new HashMap<String, Object>();
		if (typeId != null && !typeId.equalsIgnoreCase("")) {
			addWhere = "where t.id=:typeId";
			params.put("typeId", typeId);
		}
		if (status != null) {
			addWhere += " and m.status = :status";
			params.put("status", status);
		}
		List<Moption> l = this.find("select distinct m from Moption m join fetch m.moptiontype t " + addWhere + " order by m.seq", params);
		return l;
	}

}
