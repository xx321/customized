package max.factory;

import javax.servlet.http.HttpServletRequest;

import max.pageModel.BuySafe;
import max.pageModel.BuySafeForm;
import max.pageModel.Order;
import max.util.RequestUtil;
import max.util.SHA1Util;

public class BuySafeFactory {

	public static BuySafeForm getBuySafeForm(Order o) {
		BuySafeForm b = new BuySafeForm();
		b.setWeb("金流系統帳號");
		b.setMn(o.getTotalAmount());
		b.setOrderInfo("吳福洋專屬客製化襪子服務");
		b.setTd(o.getCode());
		b.setSna(o.getRecipientName());
		b.setSdt(o.getRecipientPhone());
		b.setEmail(o.getRecipientEmail());
		b.setNote1("客製襪交易");
		b.setNote2(o.getId());
		b.setCard_Type(0);
		b.setCountry_Type("");
//		String chkValue = SHA1Util.encrypt2SHA1(b.getWeb() + "6503"
//				+ b.getMn());
		b.setChkValue("");

		b.setCheckoutType(o.getCheckoutType());
		return b;
	}

	public static boolean checkValue(BuySafe buySafe) {
		if (buySafe.getWeb() == null)
			return false;
		if (buySafe.getBuysafeno() == null)
			return false;
		if (buySafe.getMN() == null)
			return false;
		if (buySafe.getErrcode() == null)
			return false;
		if (buySafe.getChkValue() == null)
			return false;
		String chkValue = SHA1Util.encrypt2SHA1(buySafe.getWeb() + "金流系統密碼"
				+ buySafe.getBuysafeno() + buySafe.getMN()
				+ buySafe.getErrcode());
		return chkValue.equals(buySafe.getChkValue());
	}

	/**
	 * 由於信用卡交易網站，回傳參數有開頭大寫，導致Spring無法直接進行參數封裝
	 * 所以直接對Request 進行取值，再封裝至BuySafe 類。
	 * @param request
	 * @return BuySafe
	 */
	public static BuySafe getBuySafe(HttpServletRequest request) {
//		RequestUtil.showAll(request);
	
		BuySafe b = new BuySafe();
		b.setBuysafeord(request.getParameter("buysafeord"));
		b.setBuysafeno((String) request.getParameter("buysafeno"));
		b.setWeb((String) request.getParameter("web"));
		b.setTd((String) request.getParameter("Td"));
		b.setMN(request.getParameter("MN"));
		b.setWebname(request.getParameter("webname"));
		b.setName(request.getParameter("Name"));
		b.setTel(request.getParameter("tel"));
		b.setOrderInfo(request.getParameter("OrderInfo"));
		b.setNote1(request.getParameter("note1"));
		b.setNote2(request.getParameter("note2"));
		b.setApproveCode(request.getParameter("ApproveCode"));			
		b.setUserNo(request.getParameter("UserNo"));	
		b.setPaycode(request.getParameter("paycode"));	
		b.setSendType(request.getParameter("SendType"));	
		b.setErrcode(request.getParameter("errcode"));	
		b.setCardno4(request.getParameter("cardno4"));
		b.setChkValue((String) request.getParameter("ChkValue"));
		return b;
	}
	
	/**
	 * 因應接收信用卡交易完成後，回傳單一網址
	 * 先傳到客制化網站做驗證，如果是屬於客制化網站的交易單據，直接在controller完成
	 * 如果不屬於客製化網站，將收到的回傳參數，進行URL的封裝，再跳轉至官網。
	 * @param url 官網完成信用卡交易接收網址
	 * @param b BuySafe類
	 * @return 帶參數的URL
	 */
	public static String getUrl(String url, BuySafe b) {	
		String nextUrl = String.format(url+"?buysafeord=%s&buysafeno=%s&web=%s&Td=%s&MN=%s&" +
				"webname=%s&Name=%s&tel=%s&OrderInfo=%s&note1=%s&note2=%s&" +
				"ApproveCode=%s&UserNo=%s&paycode=%s&SendType=%s&errcode=%s&" +
				"cardno4=%s&ChkValue=%s", 
				b.getBuysafeord(), b.getBuysafeno(), b.getWeb(), b.getTd(), b.getMN(),
				b.getWebname(), b.getName(), b.getTel(), b.getOrderInfo(), b.getNote1(), b.getNote2(),
				b.getApproveCode(), b.getUserNo(), b.getPaycode(), b.getSendType(), b.getErrcode(),
				b.getCardno4(), b.getChkValue());	
		return nextUrl;
	}
	
}
