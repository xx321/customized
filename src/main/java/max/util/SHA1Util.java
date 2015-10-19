package max.util;

import java.security.MessageDigest;

public class SHA1Util {

	public static String encrypt2SHA1(String s) {
		MessageDigest sha = null;

		try {
			sha = MessageDigest.getInstance("SHA-1");
			sha.update(s.getBytes());
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}

		return byte2hex(sha.digest());

	}

	private static String byte2hex(byte[] b) {
		String hs = "";
		String stmp = "";
		for (int n = 0; n < b.length; n++) {
			stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));
			if (stmp.length() == 1)
				hs = hs + "0" + stmp;
			else
				hs = hs + stmp;
		}
		return hs.toUpperCase();
	}
}
