package max.sms;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;

import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import freemarker.template.Template;
import freemarker.template.TemplateException;

@Component("mailsender")
public class MailSender {
	
	private static Logger logger = Logger.getLogger(MailSender.class);
	
	@Autowired
	private JavaMailSenderImpl javaMailSender;
	
	@Autowired
	private SimpleMailMessage simpleMailMessage;
	
	@Autowired
	private FreeMarkerConfigurer freemarkerConfiguration;
	
	@Autowired
	private MailSenderInfo mailSenderInfo;
	
	public void setMailSenderInfo(MailSenderInfo mailSenderInfo) {
		this.mailSenderInfo = mailSenderInfo;
	}

	private void setJavaMailSenderParams() {
		javaMailSender.setHost(mailSenderInfo.getServerHost());
		javaMailSender.setPort(mailSenderInfo.getServerPort());
		javaMailSender.setUsername(mailSenderInfo.getUserName());
		javaMailSender.setPassword(mailSenderInfo.getPassword());
		
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", mailSenderInfo.isValidate());
		prop.put("mail.smtp.timeout", mailSenderInfo.getTimeout());
		prop.put("mail.smtp.starttls.enable", mailSenderInfo.isStarttls());
		javaMailSender.setJavaMailProperties(prop);
	}

	/**
	 * 简单邮件发送
	 * 
	 */
	public void sendSimpleMail() {
		setJavaMailSenderParams();

		simpleMailMessage.setTo(mailSenderInfo.getToAddress());
		simpleMailMessage.setFrom(mailSenderInfo.getFromAddress());
		simpleMailMessage.setSubject(mailSenderInfo.getSubject());
		simpleMailMessage.setText(mailSenderInfo.getText());
		
		javaMailSender.send(simpleMailMessage);
	}

	/**
	 * 带附件的邮件发送
	 * 
	 * @throws MessagingException
	 */
	public void sendHTMLMail() throws Exception {
		setJavaMailSenderParams();

		/**
		 * Create Mime mail(contains attach, html format)
		 */
		MimeMessage mailMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, true, "utf-8");

		messageHelper.setFrom(mailSenderInfo.getFromAddress());
		messageHelper.setTo(mailSenderInfo.getToAddress());
		messageHelper.setSubject(mailSenderInfo.getSubject());
		/**
		 * true means html format
		 */
		messageHelper.setText(mailSenderInfo.getText(), true);

		File file = new File(mailSenderInfo.getFilepath());
		if (file.exists()) {
			FileSystemResource fileAdd = new FileSystemResource(file);
			messageHelper.addAttachment(MimeUtility.encodeWord(fileAdd.getFilename()), fileAdd);
		}
		
		javaMailSender.send(mailMessage);
	}
	
	/**
	 * 模版邮件发送
	 * 
	 * @throws MessagingException
	 */
	public void sendTemplateMail() throws Exception{
		setJavaMailSenderParams();

		/**
		 * Create Mime mail(contains attach, html format)
		 */
		MimeMessage mailMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, true, "utf-8");

		messageHelper.setFrom(mailSenderInfo.getFromAddress());
		messageHelper.setTo(mailSenderInfo.getToAddress());
		messageHelper.setSubject(mailSenderInfo.getSubject());
		/**
		 * true means html format
		 */
		messageHelper.setText(mailSenderInfo.getText(), true);

		File file = new File(mailSenderInfo.getFilepath());
		if (file.exists()) {
			FileSystemResource fileAdd = new FileSystemResource(file);
			messageHelper.addAttachment(MimeUtility.encodeWord(fileAdd.getFilename()), fileAdd);
		}

		javaMailSender.send(mailMessage);
	}
	
	/**
	 * 取得模版
	 * @return
	 */
	public String getEmailContent(String templateName, Map<String, Object> dateMap) {
		try {
			Template template = freemarkerConfiguration.getConfiguration().getTemplate(templateName);
			String content = FreeMarkerTemplateUtils.processTemplateIntoString(template, dateMap);
			return content;

		} catch (TemplateException e) {
			logger.error("Error while processing FreeMarker template ", e);
		} catch (FileNotFoundException e) {
			logger.error("Error while open template file ", e);
		} catch (IOException e) {
			logger.error("Error while generate Email Content ", e);
		}
		return "";
	}

}