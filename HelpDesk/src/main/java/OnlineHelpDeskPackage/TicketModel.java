package OnlineHelpDeskPackage;

public class TicketModel {
	
	private int tid;
	private int uid;
	private String name;
	private String topic;
	private String subject;
	private String description;
	private String status;
	
	public TicketModel(int tid, int uid, String name, String topic, String subject, String description, String status) {
		super();
		this.tid = tid;
		this.uid = uid;
		this.name = name;
		this.topic = topic;
		this.subject = subject;
		this.description = description;
		this.setStatus(status);
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	

}
