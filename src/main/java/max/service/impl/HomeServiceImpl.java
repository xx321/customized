package max.service.impl;

import max.factory.BuySafeFactory;
import max.pageModel.BuySafe;
import max.pageModel.Order;
import max.pageModel.Recipient;
import max.service.HomeServiceI;
import max.service.JavaMailServiceI;
import max.service.OrderServiceI;
import max.service.StockServiceI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeServiceI {
	
	@Autowired
	private StockServiceI stockService;

	@Autowired
	private OrderServiceI orderService;
	
	@Autowired
	private JavaMailServiceI javaMailService;

	@Override
	public synchronized Order add(Order order, Recipient recipient) throws Exception {
		//添加訂單前先檢查庫存數量，與變更庫存數。(庫存數-訂單商品數)
		stockService.edit(order);
		//根據參數，保存訂單
		Order o = orderService.add(order,recipient);
		return o;
	}

	
	@Override
	public boolean checkout(BuySafe buySafe) {
		if (!BuySafeFactory.checkValue(buySafe))
			return false;
		if (!"00".equals(buySafe.getErrcode()))
			return false;
		if (buySafe.getNote2() == null)
			return false;
		return orderService.checkout(buySafe.getNote2());
	}

	@Override
	public void sendOrderMail(Order order) throws Exception {
		//完成訂單保存後，根據訂單訊息，寄出郵件
		javaMailService.sendOrderMail(order);
	}
}
