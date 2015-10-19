package max.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mjava_mail", catalog = "qx")
public class MjavaMail implements java.io.Serializable {

	private static final long serialVersionUID = 6614603929778179066L;
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
	
	public MjavaMail() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "MAIL_FROM", length = 60)
	public String getFrom() {
		return this.from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	@Column(name = "USERNAME", length = 60)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "PASSWORD", length = 60)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "HOST", length = 60)
	public String getHost() {
		return this.host;
	}

	public void setHost(String host) {
		this.host = host;
	}
	
	@Column(name = "PORT", length = 60)
	public Integer getPort() {
		return port;
	}

	public void setPort(Integer port) {
		this.port = port;
	}

	@Column(name = "AUTH")
	public Integer getAuth() {
		return this.auth;
	}

	public void setAuth(Integer auth) {
		this.auth = auth;
	}

	@Column(name = "TIMEOUT")
	public Integer getTimeout() {
		return this.timeout;
	}

	public void setTimeout(Integer timeout) {
		this.timeout = timeout;
	}
	
	@Column(name = "SEQ")
	public Integer getSeq() {
		return this.seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	
	@Column(name = "PRESET")
	public Integer getPreset() {
		return preset;
	}

	public void setPreset(Integer preset) {
		this.preset = preset;
	}
	
}