package max.service.impl;

import max.dao.CoordinateDaoI;
import max.model.Mcoordinate;
import max.pageModel.Coordinate;
import max.service.CoordinateServiceI;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CoordinateServiceImpl implements CoordinateServiceI {

	@Autowired
	private CoordinateDaoI coordinateDao;

	@Override
	public Coordinate get(String id) {
		Mcoordinate m = coordinateDao.get(Mcoordinate.class, id);
		Coordinate c = new Coordinate();
		if (m!=null)
			BeanUtils.copyProperties(m, c);	
		return c;		
	}

}
