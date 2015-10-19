package max.util;

import java.util.Date;
import java.util.Set;
import java.util.UUID;

import max.dao.OptionDaoI;
import max.dao.OptionTypeDaoI;
import max.model.Mcustomer;
import max.model.Mgoods;
import max.model.Moption;
import max.model.MoptionMsize;
import max.model.Morder;
import max.pageModel.Customer;
import max.pageModel.Goods;
import max.pageModel.Option;
import max.pageModel.OptionMsize;
import max.pageModel.Order;

import org.springframework.beans.BeanUtils;

import sy.util.ClobUtil;
import sy.util.MD5Util;

/**
 * 用來將資料模型 設定到 頁面模型
 * 
 * @author 建龍
 *
 */
public class MyBeanUtils {
	
	/**
	 * 模型轉頁面	選項類
	 * model to page
	 * 
	 * @param m 模型
	 * @param o 頁面
	 */
	public static void copyProperties(Moption m, Option o) {
		BeanUtils.copyProperties(m, o, new String[] { "remark" });
		o.setRemark(ClobUtil.getString(m.getRemark()));
		if (m.getMoption() != null) {
			o.setPid(m.getMoption().getId());
			o.setPname(m.getMoption().getName());
		}
		o.setTypeId(m.getMoptiontype().getId());
		o.setTypeName(m.getMoptiontype().getName());
		//設定如果類型為 襪子顏色 或 電繡顏色 ， 樹狀節點開啟 = (葉節點 : 不會有下節點)
		if (o.getTypeId().equalsIgnoreCase("3") || o.getTypeId().equalsIgnoreCase("5")) {
			o.setState("open");
		}
		if (m.getIcon() != null && !m.getIcon().equalsIgnoreCase("")) {
			o.setIconCls(m.getIcon());
		}
	}
	
	/**
	 * 頁面轉模型	選項類
	 * page to model
	 * 
	 * @param o 頁面
	 * @param m 模型
	 * @param optionDao
	 * @param optionTypeDao
	 * @param edit 是否為編輯
	 */
	public static void copyProperties(Option o, Moption m, OptionDaoI optionDao, OptionTypeDaoI optionTypeDao, boolean edit) {
		BeanUtils.copyProperties(o, m, new String[] { "remark" });
		m.setRemark(ClobUtil.getClob(o.getRemark()));
		if (o.getTypeId() != null && !o.getTypeId().equalsIgnoreCase("")) {
			m.setMoptiontype(optionTypeDao.getById(o.getTypeId()));// 賦值選項類型
		}
		if (o.getIconCls() != null && !o.getIconCls().equalsIgnoreCase("")) {
			m.setIcon(o.getIconCls());
		} 
		if (o.getPid() != null && !o.getPid().equalsIgnoreCase("")) {// 說明前台選中了上級的選項
			Moption pm = optionDao.get(Moption.class, o.getPid());
			if (edit)
				isChildren(m, pm);// 說明要將當前選項修改到當前選項的子/孫子選項下
			m.setMoption(pm);
		} else {
			m.setMoption(null);// 前台沒有選中上級選項，所以就置空
		}
	}
	/**
	 * 判斷是否是將當前節點修改到當前節點的子節點
	 * 
	 * @param m
	 *            當前節點
	 * @param pm
	 *            要修改到的節點
	 * @return
	 */
	private static boolean isChildren(Moption m, Moption pm) {
		if (pm != null && pm.getMoption() != null) {
			if (pm.getMoption().getId().equalsIgnoreCase(m.getId())) {
				pm.setMoption(null);
				return true;
			} else {
				return isChildren(m, pm.getMoption());
			}
		}
		return false;
	}
	
	/**
	 * 頁面轉模型	客戶類
	 * 
	 * @param c 頁面
	 * @param m 模型
	 */
	public static void copyProperties(Customer c, Mcustomer m) {
		BeanUtils.copyProperties(c, m);
		if (m.getId() == null)
			m.setId(UUID.randomUUID().toString());
		m.setPwd(MD5Util.md5(c.getPwd()));
		m.setBirthday(DateUtil.str2Date(c.getBirthdayStr(), DateUtil.date_sdf));
		m.setCreatedatetime(new Date());
	}

	/**
	 * 模型轉頁面	訂單類
	 * page to model
	 * 
	 * @param m 模型 
	 * @param o 頁面
	 */
	public static void copyProperties(Morder m, Order o) {
		BeanUtils.copyProperties(m, o);
		if (m.getMrecipient() != null) {
			o.setRecipientName(m.getMrecipient().getName());
			o.setRecipientPhone(m.getMrecipient().getPhone());
			o.setRecipientPostal(m.getMrecipient().getPostal());
			o.setRecipientCity(m.getMrecipient().getCity());
			o.setRecipientTown(m.getMrecipient().getTown());
			o.setRecipientAddr(m.getMrecipient().getAddr());
			o.setRecipientEmail(m.getMrecipient().getEmail());
		}
		if (m.getMcustomer() != null) {
			o.setCustomerName(m.getMcustomer().getName());
			o.setCustomerPhone(m.getMcustomer().getPhone());
		}
	}
	
	/**
	 * 頁面轉模型	訂單類
	 * model to page
	 * 
	 * @param order 頁面
	 * @param m 模型 
	 */
	public static void copyProperties(Order order, Morder o) {
		o.setId(UuidUtils.compressedUuid());
		o.setTotal(order.getTotal());
		o.setTotalAmount(order.getTotalAmount());
		o.setCreateDate(new Date());
		o.setState(0);		
		o.setCheckoutType(order.getCheckoutType());
		o.setRemark(order.getRemark());
	}
	
	/**
	 * 模型轉頁面	商品類
	 * page to model
	 * 
	 * @param m 模型 
	 * @param g 頁面
	 */
	public static void copyProperties(Mgoods m, Goods g) {
		BeanUtils.copyProperties(m, g);
		if (m.getMoptions() != null && m.getMoptions().size() >0) {
			Set<Moption> moptions = m.getMoptions();
			for (Moption moption : moptions) {
				if (moption.getMoptiontype().getId().equalsIgnoreCase("0"))
					g.setT0Name(moption.getName());
				if (moption.getMoptiontype().getId().equalsIgnoreCase("1"))
					g.setT1Name(moption.getName());
				if (moption.getMoptiontype().getId().equalsIgnoreCase("2"))
					g.setT2Name(moption.getName());
				if (moption.getMoptiontype().getId().equalsIgnoreCase("3"))
					g.setT3Name(moption.getName());
				if (moption.getMoptiontype().getId().equalsIgnoreCase("4"))
					g.setT4Name(moption.getName());
				if (moption.getMoptiontype().getId().equalsIgnoreCase("5"))
					g.setT5Name(moption.getName());
				if (moption.getMoptiontype().getId().equalsIgnoreCase("6"))
					g.setT6Name(moption.getName());
			}
		}
		
	}
	
	/**
	 * 模型轉頁面	庫存類
	 * model to page
	 * 
	 * @param m 模型 
	 * @param o 頁面
	 */
	public static void copyProperties(MoptionMsize m, OptionMsize o) {
		BeanUtils.copyProperties(m, o);
		o.setOptionId(m.getMoption().getId());
		o.setOptionName(m.getMoption().getName());
		o.setItemNo(m.getMoption().getItemNo());
		o.setSizeId(m.getMsize().getId());
		o.setSizeName(m.getMsize().getName());
	}
	
}
