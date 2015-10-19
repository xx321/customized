package max.util;

import max.pageModel.Discount;
import max.pageModel.Goods;
import max.pageModel.Order;

public class DiscountUtil {
	
	/**
	 * 計算同品折扣優惠
	 * @param goods
	 * @param like
	 */
	public static void countLike(Goods goods, Discount like) {
		if (goods.getQuantity() >= like.getFactor()) {
			goods.setTotalAmount(goods.getPrice()*goods.getQuantity()*like.getParam()/100);
			goods.setRemark(like.getRemark());
		}
		else {
			goods.setTotalAmount(goods.getPrice()*goods.getQuantity());
			goods.setRemark("");
		}	
	}
	
	/**
	 * 計算訂單小計金額
	 * @param order
	 */
	public static void countTotal(Order order) {
		Integer total = 0;
		if (order.getGoodses() != null && order.getGoodses().size() > 0) {
			for (Goods g : order.getGoodses()) {
				if (g.getTotalAmount() !=null)
					total += g.getTotalAmount();
			}
		}
		order.setTotal(total);
		order.setTotalAmount(total);
	}
	
	/**
	 * 計算滿額折扣優惠
	 * @param order
	 * @param full
	 */
	public static void countFull(Order order, Discount full) {
		if (order.getTotalAmount() >= full.getFactor()) {
			order.setTotalAmount(order.getTotalAmount()-full.getParam());
			order.setRemark(order.getRemark()+"  **"+full.getRemark()+"**");
		}
	}
	
	/**
	 * 計算滿額免運優惠
	 * @param order
	 * @param shipment
	 */
	public static void countShipment(Order order, Discount shipment) {
		if (order.getTotalAmount() >= shipment.getFactor()) {
			order.setRemark(order.getRemark()+"  **"+shipment.getRemark()+"**");
		} else {
			order.setTotalAmount(order.getTotalAmount()+shipment.getParam());
		}
	}
	
}
