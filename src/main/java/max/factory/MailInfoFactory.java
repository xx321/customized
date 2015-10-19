package max.factory;

import max.pageModel.JavaMail;
import max.sms.MailSenderInfo;

public class MailInfoFactory {

	public static MailSenderInfo getMmailInfo(JavaMail j) {
		MailSenderInfo m = new MailSenderInfo();
		m.setServerHost(j.getHost());
		m.setServerPort(j.getPort());
		m.setValidate(j.getAuth()==1?true:false);
		m.setUserName(j.getUsername());
		m.setPassword(j.getPassword());
		m.setFromAddress(j.getFrom());
		m.setTimeout(j.getTimeout());	
		return m;	
	}
}
