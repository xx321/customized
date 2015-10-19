package max.service;

import max.pageModel.Coordinate;

/**
 * 座標類型服務
 * 
 * @author 建龍
 * 
 */
public interface CoordinateServiceI {
	
	/**
	 * 獲得一個座標類
	 * 
	 * @param id
	 * @return
	 */
	Coordinate get(String id);

}
