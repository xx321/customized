package max.service.impl;

import max.dao.DiscountDaoI;
import max.model.Mdiscount;
import max.pageModel.Discount;
import max.service.DiscountServiceI;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.util.ClobUtil;

@Service
public class DiscountServiceImpl implements DiscountServiceI {

	@Autowired
	private DiscountDaoI discountDao;

	@Override
	public Discount get(String id) {
		Discount d = new Discount();
		Mdiscount m = discountDao.get(Mdiscount.class, id);
		if (m!=null) {
			BeanUtils.copyProperties(m, d, new String[] { "remark"});
			d.setRemark(ClobUtil.getString(m.getRemark()));
		}
		return d;
	}

	@Override
	public void edit(Discount discount) {
		Mdiscount m = discountDao.get(Mdiscount.class, discount.getId());
		if (m != null) {
			BeanUtils.copyProperties(discount, m, new String[] { "id", "remark"});
			m.setRemark(ClobUtil.getClob(discount.getRemark()));
		}
	}

}
