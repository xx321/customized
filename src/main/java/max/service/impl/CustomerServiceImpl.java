package max.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.CustomerDaoI;
import max.model.Mcustomer;
import max.pageModel.Customer;
import max.service.CustomerServiceI;
import max.util.DateUtil;
import max.util.MyBeanUtils;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;
import sy.util.MD5Util;

@Service
public class CustomerServiceImpl implements CustomerServiceI {
	
	@Autowired
	private CustomerDaoI customerDao;
	
	@Override
	public Customer login(Customer customer) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("account", customer.getAccount());
		params.put("pwd", MD5Util.md5(customer.getPwd()));
		Mcustomer m = customerDao.get("from Mcustomer m where m.account = :account and m.pwd = :pwd", params);
		if (m != null) {
			BeanUtils.copyProperties(m, customer);
			return customer;
		}
		return null;
	}
	
	@Override
	synchronized public void reg(Customer customer) throws Exception {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("account", customer.getAccount());
		if (customerDao.count("select count(*, params) from Mcustomer m where m.account = :account", params) > 0) {
			throw new Exception("登錄名已存在!");
		} else {
			Mcustomer m = new Mcustomer();
			MyBeanUtils.copyProperties(customer, m);
			customerDao.save(m);
		}
	}
	
	@Override
	public DataGrid dataGrid(Customer customer, PageHelper ph) {
		DataGrid dg = new DataGrid();
		Map<String, Object> params = new HashMap<String, Object>();
		
		String hql = "from Mcustomer m ";
		String whereHql = whereHql(customer, params);
		String orderHql = orderHql(ph);

		List<Mcustomer> l = customerDao.find(hql + whereHql + orderHql, params, ph.getPage(), ph.getRows());
		List<Customer> cl = new ArrayList<Customer>();
		
		if (l != null && l.size() >0) {
			for (Mcustomer m : l) {
				Customer c = new Customer();
				BeanUtils.copyProperties(m, c);
				cl.add(c);
			}
		}
		dg.setRows(cl);
		dg.setTotal(customerDao.count("select count(*) " + hql + whereHql, params));
		return dg;
	}
	
	private String whereHql(Customer customer, Map<String, Object> params) {
		String whereHql = "";
		if (customer != null) {
			whereHql += " where 1=1 ";
			if (customer.getAccount() != null && !customer.getAccount().equalsIgnoreCase("")) {
				whereHql += " and m.account like :account";
				params.put("account", "%%" + customer.getAccount() + "%%");
			}
			if (customer.getCreatedatetimeStart() != null) {
				whereHql += " and m.createdatetime >= :createdatetimeStart";
				params.put("createdatetimeStart", customer.getCreatedatetimeStart());
			}
			if (customer.getCreatedatetimeEnd() != null) {
				whereHql += " and m.createdatetime >= :createdatetimeEnd";
				params.put("createdatetimeEnd", customer.getCreatedatetimeEnd());
			}
		}
		return whereHql;
	}
	
	private String orderHql(PageHelper ph) {
		String orderString = "";
		if (ph.getSort() != null && ph.getOrder() !=null) {
			orderString = " order by m." + ph.getSort() + " " + ph.getOrder();
		}
		return orderString;
	}

	@Override
	synchronized public void add(Customer customer) throws Exception {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("account", customer.getAccount());
		if (customerDao.count("select count(*) from Mcustomer m where m.account = :account", params) >0) {
			throw new Exception("登錄名已存在!");
		} else {
			Mcustomer m = new Mcustomer();
			MyBeanUtils.copyProperties(customer, m);
			customerDao.save(m);
		}
	}

	@Override
	public Customer get(String id) {
		Mcustomer m = customerDao.getById(id);
		Customer c = new Customer();
		if (m!=null)
			BeanUtils.copyProperties(m, c);
		return c;
	}

	@Override
	synchronized public void edit(Customer customer) throws Exception {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", customer.getId());
		params.put("account", customer.getAccount());
		if (customerDao.count("select count(*) from Mcustomer m where m.account = :account and m.id != :id", params) > 0) {
			throw new Exception("登录名已存在！");
		} else {
			Mcustomer m = customerDao.getById(customer.getId());
			if (m!=null) {
				BeanUtils.copyProperties(customer, m, new String[] { "pwd", "createdatetime" });
				m.setBirthday(DateUtil.str2Date(customer.getBirthdayStr(), DateUtil.date_sdf));
				m.setModifydatetime(new Date());
			}
		}
	}

	@Override
	public void delete(String id) {
		customerDao.delete(customerDao.getById(id));
	}

	@Override
	public void editPwd(Customer customer) {
		if (customer != null && customer.getPwd() != null && !customer.getPwd().equalsIgnoreCase("")) {
			Mcustomer m = customerDao.getById(customer.getId());
			if (m!=null) {
				m.setPwd(MD5Util.md5(customer.getPwd()));
				m.setModifydatetime(new Date());
			}
		}
	}

}
