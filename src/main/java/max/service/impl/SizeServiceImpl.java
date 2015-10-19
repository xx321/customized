package max.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.SizeDaoI;
import max.model.Msize;
import max.pageModel.Size;
import max.service.SizeServiceI;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

@Service
public class SizeServiceImpl implements SizeServiceI {
	
	@Autowired
	private SizeDaoI sizeDao;

	@Override
	public DataGrid dataGrid(PageHelper ph) {
		DataGrid dg = new DataGrid();
		List<Size> sl = new ArrayList<Size>();
		Map<String, Object> params = new HashMap<String, Object>();
		List<Msize> ml = sizeDao.find("from Msize m order by m.seq", params, ph.getPage(), ph.getRows());
		if (ml != null && ml.size() > 0) {
			for (Msize m : ml) {
				Size s = new Size();
				BeanUtils.copyProperties(m, s);
				sl.add(s);
			}
		}
		dg.setRows(sl);
		dg.setTotal(sizeDao.count("select count(*) from Msize"));
		return dg;
	}

	@Override
	public void add(Size size) {
		Msize m = new Msize();
		BeanUtils.copyProperties(size, m);
		sizeDao.save(m);
	}

	@Override
	public Size get(String id) {
		Size s = new Size();
		Msize m = sizeDao.get(Msize.class, id);
		if (m!=null)
			BeanUtils.copyProperties(m, s);
		return s;
	}

	@Override
	public void edit(Size size) {
		Msize m = sizeDao.get(Msize.class, size.getId());
		if (m!=null)
			BeanUtils.copyProperties(size, m);
	}

}
