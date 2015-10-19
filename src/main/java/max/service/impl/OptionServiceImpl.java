package max.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import max.comparator.SeqComparator;
import max.dao.CoordinateDaoI;
import max.dao.OptionDaoI;
import max.dao.OptionTypeDaoI;
import max.dao.SizeDaoI;
import max.dao.StockDaoI;
import max.model.Mcoordinate;
import max.model.Moption;
import max.model.Msize;
import max.pageModel.Coordinate;
import max.pageModel.Option;
import max.pageModel.OptionMsize;
import max.pageModel.Size;
import max.service.OptionServiceI;
import max.util.MyBeanUtils;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;
import sy.pageModel.Tree;

@Service
public class OptionServiceImpl implements OptionServiceI {

	@Autowired
	private OptionDaoI optionDao;

	@Autowired
	private OptionTypeDaoI optionTypeDao;
	
	@Autowired
	private CoordinateDaoI coordinateDao;

	@Autowired
	private SizeDaoI sizeDao;

	@Autowired
	private StockDaoI stockDao;
	
	
	@Override
	public List<Tree> getChildrenTree(String pid) {
		List<Moption> l = optionDao.findByPid(pid);
		List<Tree> lt = new ArrayList<Tree>();
		
		this.copyProperties2Tree(l, lt);
		return lt;
	}

	@Override
	public List<Tree> getParentTree(String typeId) {
		List<Moption> l = optionDao.findListByTypdId(typeId, null);
		List<Tree> lt = new ArrayList<Tree>();
		
		this.copyProperties2Tree(l, lt);
		return lt;
	}

	/**
	 * 將獲得的模型列表 轉換成 樹狀列表
	 * 
	 * @param l		模型列表
	 * @param lt	樹狀列表
	 */
	private void copyProperties2Tree(List<Moption> l, List<Tree> lt) {
		if (l != null && l.size() > 0) {
			for (Moption m : l) {			
				Tree tree = new Tree();
				BeanUtils.copyProperties(m, tree);
				if (m.getMoption() != null) {
					tree.setPid(m.getMoption().getId());
				}
				tree.setText(m.getName());
				tree.setIconCls(m.getIcon());
				Map<String, Object> attr = new HashMap<String, Object>();
				tree.setAttributes(attr);
				tree.setState("closed");
				lt.add(tree);
			}
		}
	}

	@Override
	public List<Option> getChildrenTreeGrid(String pid) {
		List<Moption> l = optionDao.findByPid(pid);
		List<Option> lo = new ArrayList<Option>();
		
		this.copyProperties2Page(l, lo);
		return lo;
	}

	@Override
	public List<Option> getParentTreeGrid(String typeId, Integer status) {
		List<Moption> l = optionDao.findListByTypdId(typeId, status);
		List<Option> lo = new ArrayList<Option>();

		this.copyProperties2Page(l, lo);
		return lo;
	}
	/**
	 * 將獲得的模型列表 轉換成 頁面列表
	 * 
	 * @param l		模型列表
	 * @param lo	頁面列表
	 */
	private void copyProperties2Page(List<Moption> l, List<Option> lo) {
		if (l != null && l.size() > 0) {
			for (Moption m : l) {
				Option o = new Option();
				MyBeanUtils.copyProperties(m, o);
				lo.add(o);
			}
		}
	}
	
	@Override
	public Moption add(Option option) {
		Moption m = new Moption();
		MyBeanUtils.copyProperties(option, m, optionDao, optionTypeDao, false);
		
		setMsizes(option, m);
		optionDao.save(m);	
		return m;
	}
	/**
	 * 根據前台傳來的尺寸字串(sizeIds)，設定選項的尺寸
	 * @param option 頁面
	 * @param m 模型
	 */
	private void setMsizes(Option option, Moption m) {
		if (option.getSizeIds()!=null && option.getSizeIds().length()>0) {
			m.getMsizes().clear();
			for (String id : option.getSizeIds().split(",")) {
				if (id !=null && !id.trim().equalsIgnoreCase("")) {
					Msize s = sizeDao.get(Msize.class, id);
					m.getMsizes().add(s);
				}
			}
		}
	}

	@Override
	public void delete(String id) {
		Moption m = optionDao.get(Moption.class, id);
		if (m!=null)
		del(m);
	}

	private void del(Moption m) {
		if (m.getMoptions() != null && m.getMoptions().size() > 0) {
			for (Moption o : m.getMoptions()) {
				del(o);
			}
		}
		optionDao.delete(m);
	}

	@Override
	public Moption edit(Option option) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", option.getId());
		Moption m = optionDao.get("select distinct m from Moption m where m.id = :id", params);
		if (m != null) {
			MyBeanUtils.copyProperties(option, m, optionDao, optionTypeDao, true);
			setMsizes(option, m);
		}
		return m;
	}

	@Override
	public Option get(String id) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		Moption m = optionDao.get("from Moption m left join fetch m.moption moption left join fetch m.moptiontype moptiontype where m.id = :id", params);
		Option o = new Option();
		if (m!=null) {
			MyBeanUtils.copyProperties(m, o);
			setSizeIds(m, o);
		}	
		return o;
	}
	
	/**
	 * 根據後台取得的選項，設定頁面模型的sizeIds
	 * @param m 模型
	 * @param option 頁面
	 */
	private void setSizeIds(Moption m, Option o) {
		if (m.getMsizes() !=null && !m.getMsizes().isEmpty()) {
			String sizeIds = "";
			boolean b = false;
			for (Msize s : m.getMsizes()) {
				if (b) {
					sizeIds += ",";
				} else {
					b = true;
				}
				sizeIds += s.getId();
			}
			o.setSizeIds(sizeIds);
		}
	}
	
	@Override
	public Moption changeState(String id, int status) {
		Moption m = optionDao.get(Moption.class, id);
		if (m!=null)
			m.setStatus(status);
		return m;
	}

	@Override
	public DataGrid dataGrid(Option option, PageHelper ph) {
		DataGrid dg = new DataGrid();
		Map<String, Object> params = new HashMap<String, Object>();
		
		String hql = "from Moption m ";
		String joinHql = " left join fetch m.moptiontype type ";
		String whereHql = whereHql(option, params);
		String orderHql = orderHql(ph);
		
		List<Moption> l = optionDao.find(hql + joinHql + whereHql + orderHql, params, ph.getPage(), ph.getRows());
		List<Option> ol = new ArrayList<Option>();
		
		if (l != null && l.size() >0) {
			for (Moption m : l) {
				Option o = new Option();
				MyBeanUtils.copyProperties(m, o);	
				ol.add(o);
			}
		}
		dg.setRows(ol);
		dg.setTotal(optionDao.count("select count(*) " + hql + "left join m.moptiontype type " + whereHql, params));
		return dg;
	}

	private String whereHql(Option option, Map<String, Object> params) {
		String whereHql = "";
		if (option != null) {
			whereHql += " where 1=1 ";
			if (option.getName() != null && !option.getName().equalsIgnoreCase("")) {
				whereHql += " and m.name like :name";
				params.put("name", "%%" + option.getName() + "%%");
			}
			if (option.getTypeId() != null && !option.getTypeId().equalsIgnoreCase("")) {
				whereHql += " and type.id= :typeId";
				params.put("typeId", option.getTypeId());
			}
		}
		return whereHql;
	}

	private String orderHql(PageHelper ph) {
		String orderString = "";
		if (ph.getSort() != null && ph.getOrder() != null) {
			orderString = " order by m." + ph.getSort() + " " + ph.getOrder();
		}
		return orderString;
	}

	@Override
	public void add(Option option, Coordinate coordinate) {
		Moption m = this.add(option);
		Mcoordinate mc = new Mcoordinate();
		BeanUtils.copyProperties(coordinate, mc);
		mc.setMoption(m);
		coordinateDao.save(mc);
	}

	@Override
	public void edit(Option option, Coordinate coordinate) {
		Moption moption = this.edit(option);
		Mcoordinate m = coordinateDao.get(Mcoordinate.class, option.getId());
		if (m!=null)
			BeanUtils.copyProperties(coordinate, m, new String[] { "id" });
		else {
			Mcoordinate mc = new Mcoordinate();
			BeanUtils.copyProperties(coordinate, mc);
			if (moption !=null) {
				mc.setMoption(moption);
				coordinateDao.save(mc);
			}
		}
	}

	@Override
	public List<Option> getOptionsOnSale(String pid) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pid", pid);
		params.put("status", 0);
		List<Moption> l = optionDao.find("select distinct m from Moption m join fetch m.moptiontype t join fetch m.moption p where p.id=:pid and m.status=:status order by m.seq", params);
		List<Option> lo = new ArrayList<Option>();

		this.copyPropertiesWithColor(l, lo);
		return lo;
	}
	
	/**
	 * 將獲得的模型列表 轉換成 頁面列表
	 * 
	 * @param l		模型列表
	 * @param lo	頁面列表
	 */
	private void copyPropertiesWithColor(List<Moption> l, List<Option> lo) {
		if (l != null && l.size() > 0) {
			for (Moption m : l) {
				Option o = new Option();
				MyBeanUtils.copyProperties(m, o);
				if (m.getMoptiontype().getId()!=null && m.getMoptiontype().getId().equalsIgnoreCase("2")) {
					Mcoordinate c = coordinateDao.get(Mcoordinate.class, m.getId());
					if (c!=null) {
						o.setIconTop(c.getIconTop());
						o.setIconLeft(c.getIconLeft());
						o.setIconHeight(c.getIconHeight());
						o.setIconWidth(c.getIconWidth());
						o.setIconDeg(c.getIconDeg());
						o.setTextTop(c.getTextTop());
						o.setTextLeft(c.getTextLeft());
						o.setTextHeight(c.getTextHeight());
						o.setTextWidth(c.getTextWidth());
						o.setTextDeg(c.getTextDeg());					
					}
				}
				lo.add(o);
			}
		}
	}

	@Override
	public List<Size> getSizes(String id) {
		List<Size> ls = new ArrayList<Size>();
		Moption m = optionDao.get(Moption.class, id);
		if (m!=null) {
		    Set<Msize> l = m.getMsizes();
		    //取得選項的庫存數(襪子顏色所有尺寸的庫存數量
		    Map<String, OptionMsize> stocks = stockDao.findByOptionId(id);
		    if (l != null && l.size() >0) {
		    	for (Msize ms : l) {
		    		Size s = new Size();
		    		BeanUtils.copyProperties(ms, s);
		    		
		    		//在尺寸頁面模型上添加庫存ID與庫存數
		    		if (stocks.get(s.getId()) != null) {
		    			OptionMsize stock = stocks.get(s.getId());
		    			s.setStockSizeId(stock.getSizeId());
		    			s.setQuantity(stock.getQuantity());
		    		}
		    		if (s.getQuantity() > 3)
		    			ls.add(s);
		    	}
		    }
		}
		Collections.sort(ls, new SeqComparator());
		return ls;
	}
}
