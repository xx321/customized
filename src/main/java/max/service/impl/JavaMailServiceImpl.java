package max.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.JavaMailDaoI;
import max.factory.MailInfoFactory;
import max.model.MjavaMail;
import max.pageModel.JavaMail;
import max.pageModel.Order;
import max.service.JavaMailServiceI;
import max.sms.MailSender;
import max.sms.MailSenderInfo;
import max.sms.OrderMail;

import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

@Service
public class JavaMailServiceImpl implements JavaMailServiceI {
	
	private static Logger logger = Logger.getLogger(JavaMailServiceImpl.class);
	
	@Autowired
	private JavaMailDaoI javaMailDao;
	
	@Autowired
	private MailSender sender;
	
	@Override
	public DataGrid dataGrid(JavaMail javaMail, PageHelper ph) {
		DataGrid dg = new DataGrid();
		Map<String, Object> params = new HashMap<String, Object>();
		
		String hql = "from MjavaMail m ";
		String whereHql = whereHql(javaMail, params);
		String orderHql = orderHql(ph);

		List<MjavaMail> l = javaMailDao.find(hql + whereHql + orderHql, params, ph.getPage(), ph.getRows());
		List<JavaMail> jl = new ArrayList<JavaMail>();
		
		if (l != null && l.size() >0) {
			for (MjavaMail m : l) {
				JavaMail j = new JavaMail();
				BeanUtils.copyProperties(m, j);
				jl.add(j);
			}
		}
		dg.setRows(jl);
		dg.setTotal(javaMailDao.count("select count(*) " + hql + whereHql, params));
		return dg;
	}
	
	private String whereHql(JavaMail javaMail, Map<String, Object> params) {
		String whereHql = "";
		if (javaMail != null) {
			whereHql += " where 1=1 ";
			if (javaMail.getFrom() != null && !javaMail.getFrom().equalsIgnoreCase("")) {
				whereHql += " and m.from like :from";
				params.put("from", "%%" + javaMail.getFrom() + "%%");
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
	public void add(JavaMail javaMail) {
		MjavaMail m = new MjavaMail();
		BeanUtils.copyProperties(javaMail, m);
		javaMailDao.save(m);
	}

	@Override
	public JavaMail get(String id) {
		MjavaMail m = javaMailDao.get(MjavaMail.class, id);
		JavaMail j = new JavaMail();
		if (m!=null)
			BeanUtils.copyProperties(m, j);
		return j;
	}

	@Override
	public void edit(JavaMail javaMail) {
		MjavaMail m = javaMailDao.get(MjavaMail.class, javaMail.getId());
		if (m!=null)
			BeanUtils.copyProperties(javaMail, m);
	}

	@Override
	public JavaMail getPreset() {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("preset", 1);
		MjavaMail m = javaMailDao.get("select distinct m from MjavaMail m where m.preset = :preset", params);
		JavaMail j = new JavaMail();
		if (m !=null) {
			BeanUtils.copyProperties(m, j);
		}
		return j;
	}

	@Override
	public boolean sendOrderMail(Order o) throws Exception {		
		JavaMail j = this.getPreset();
		MailSenderInfo mailInfo = MailInfoFactory.getMmailInfo(j);
		mailInfo.setToAddress(o.getRecipientEmail());
		mailInfo.setSubject("** 客製化商品購買明細單 **‏");
		String templateText = sender.getEmailContent("order.ftl", OrderMail.getDateMap(o));	
		mailInfo.setText(templateText);
		mailInfo.setFilepath("");
		sender.setMailSenderInfo(mailInfo);
		try {
			sender.sendTemplateMail();		
			o.setSendMailOK(true);	
			logger.info("=============================================================================");
			logger.info("=============================================================================");
			logger.info("===========================信件傳送成功!!=======================================");
			logger.info("=============================================================================");
			logger.info("=============================================================================");
			return true;
		} catch (Exception e) {
			o.setSendMailOK(false);
			logger.error("=============================================================================");
			logger.error("=============================================================================");
			logger.error("信件傳送失敗!! ", e);
			logger.error("=============================================================================");
			logger.error("=============================================================================");
			throw new Exception();
		}
	}
}
