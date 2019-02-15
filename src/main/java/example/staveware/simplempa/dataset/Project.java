package example.staveware.simplempa.dataset;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PJ_INFO")
public class Project {
	
	@Id
	@Column(name="PJ_NO")
	private String projectNo;
	
	@Column(name="PJ_NAME")
	private String projectName;
	
	@Column(name="PJ_ORDER_NO")
	private Long orderNo;
	
	public Project() {
	}
	
	public String getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public Long getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Long orderNo) {
		this.orderNo = orderNo;
	}

	public Project(String projectNo, String projectName) {
		super();
		this.projectNo = projectNo;
		this.projectName = projectName;
	}
	
}
