package max.sms;

public class MailSenderInfo {
	
	//發件人帳號訊息
	private String serverHost;			//服務器名稱
	private int serverPort;				//服務器端口
	private boolean validate;			//是否驗證
	private boolean starttls = true;	//開啟tls :starttls.enable
	private String userName;			//帳號
	private String password;			//密碼
	private String fromAddress;			//發送人信箱
	private String sendName;			//發送人姓名 
	private int timeout;				//超時時間
	
	//收件人訊息
	private String toAddress;		//收件人信箱
	private String subject;			//郵件主題
	private String text;			//郵件訊息
	private String filepath = "";	//附件路徑

	public String getServerHost() {
		return serverHost;
	}

	public void setServerHost(String serverHost) {
		this.serverHost = serverHost;
	}

	public int getServerPort() {
		return serverPort;
	}

	public void setServerPort(int serverPort) {
		this.serverPort = serverPort;
	}

	public boolean isValidate() {
		return validate;
	}

	public void setValidate(boolean validate) {
		this.validate = validate;
	}

	public boolean isStarttls() {
		return starttls;
	}

	public void setStarttls(boolean starttls) {
		this.starttls = starttls;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public void setTimeout(int timeout) {
		this.timeout = timeout;
	}

	public int getTimeout() {
		return timeout;
	}

	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	public String getToAddress() {
		return toAddress;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubject() {
		return subject;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getText() {
		return text;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getFilepath() {
		return filepath;
	}
}