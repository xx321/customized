package max.pageModel;

public class JavaMail implements java.io.Serializable {

	private String id;
	private String from;
	private String username;
	private String password;
	private String host;
	private Integer port;
	private Integer auth;
	private Integer timeout;
	private Integer seq;
	private Integer preset;
	
	public JavaMail() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFrom() {
		return this.from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHost() {
		return this.host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public Integer getPort() {
		return port;
	}

	public void setPort(Integer port) {
		this.port = port;
	}

	public Integer getAuth() {
		return this.auth;
	}

	public void setAuth(Integer auth) {
		this.auth = auth;
	}

	public Integer getTimeout() {
		return this.timeout;
	}

	public void setTimeout(Integer timeout) {
		this.timeout = timeout;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public Integer getPreset() {
		return preset;
	}

	public void setPreset(Integer preset) {
		this.preset = preset;
	}

}