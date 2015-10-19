package max.util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

public class RequestUtil {
	
	//列出Request 底下的所有參數
	public static void showAll(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String title = "Reading All Request Parameters";
		System.out.println("<html><head><title>读 取所有参数 </title></head>"
				+ "<BODY BGCOLOR=\"#FDF5E6\">\n" + "<H1 ALIGN=CENTER>" + title
				+ "</H1>\n" + "<TABLE BORDER=1 ALIGN=CENTER>\n"
				+ "<TR BGCOLOR=\"#FFAD00\">\n"
				+ "<TH>Parameter Name<TH>Parameter Value(s)");
		Enumeration paramNames = request.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			System.out.print("<TR><TD>" + paramName + "\n<TD>");
			String[] paramValues = request.getParameterValues(paramName);
			if (paramValues.length == 1) {
				String paramValue = paramValues[0];
				if (paramValue.length() == 0)
					System.out.println("<I>No Value</I>");
				else
					System.out.println(paramValue);
			} else {
				System.out.println("<UL>");
				for (int i = 0; i < paramValues.length; i++) {
					System.out.println("<LI>" + paramValues[i]);
				}
				System.out.println("</UL>");
			}
		}
		System.out.println("</TABLE>\n</BODY></HTML>");
	}
}
