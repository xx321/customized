package max.service;

import java.util.List;

import max.pageModel.Optiontype;

/**
 * 選項類型服務
 * 
 * @author 建龍
 * 
 */
public interface OptionTypeServiceI {

	/**
	 * 獲取選項類型
	 * 
	 * @return
	 */
	public List<Optiontype> getOptionTypeList();
	
	/**
	 * 獲得一個選項類型
	 * 
	 * @param typeId
	 * @return
	 */
	public Optiontype get(String typeId);

}
