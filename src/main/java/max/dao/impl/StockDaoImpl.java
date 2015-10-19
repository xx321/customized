package max.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import max.dao.StockDaoI;
import max.model.Mgoods;
import max.model.MoptionMsize;
import max.model.Morder;
import max.model.modelKey.MoptionMsizeId;
import max.pageModel.OptionMsize;
import max.util.MyBeanUtils;

import org.springframework.stereotype.Repository;

import sy.dao.impl.BaseDaoImpl;

@Repository
public class StockDaoImpl extends BaseDaoImpl<MoptionMsize> implements StockDaoI {

	@Override
	public Map<String, OptionMsize> findByOptionId(String id) {
		Map<String, OptionMsize> ol = new HashMap<String, OptionMsize>();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		List<MoptionMsize> l = this.find(" from MoptionMsize m where m.id.moptionId=:id", params);
		if (l != null && l.size() > 0) {
			for (MoptionMsize m : l) {
				OptionMsize o = new OptionMsize();
				MyBeanUtils.copyProperties(m, o);
				ol.put(o.getSizeId(),o);
			}
		}
		return ol;
	}

	@Override
	public void recovery(Morder order) {
		Set<Mgoods> goodses = order.getMgoodses();
		if (goodses!=null & goodses.size()>0) {
			for (Mgoods g : goodses) {
				MoptionMsizeId id = new MoptionMsizeId(g.getStockOptionId(),g.getStockSizeId());
				MoptionMsize m = this.get(MoptionMsize.class, id);
				if (m!=null) {
					m.setQuantity(m.getQuantity() + g.getQuantity());
				}
			}
		}
	}
	
}
