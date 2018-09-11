package com.ehealth.hmms.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users implements Serializable {

	private static final long serialVersionUID = -7788619177798333712L;

	@Id 
	@SequenceGenerator(name="users_sequence",sequenceName="users_seq", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="users_sequence")
	@Column(name="user_id", unique=true, nullable=false)
	private Long user_id;

	@Column(name = "login_name")
	private String loginName;

	@Column(name = "user_name")
	private String userName; 
	
	@Column(name = "employee_id")
	private Long employeeId;
	
	@Column(name = "password")
	private String password;

	@Column(name = "status")
	private String status;
	
	@Column(name = "last_chg_by")
	private Integer lastChgBy;

	@Column(name = "last_chg_date")
	private Date lastChgDate;
	
	@Column(name = "last_chg_time")
	private String lastChgTime;
	
	@Column(name = "email_address")
	private String emailAddress;
	
	@Column(name = "hospital_id")
	private Long hospitalId;
	
	@Column(name = "last_successful_login_date")
	private Date lastSuccessfulLoginDate;
	
	@Column(name = "last_successful_login_time")
	private String lastSuccessfulLoginTime;
	
	@Column(name = "login_count")
	private Long loginCount;
	
	@Column(name = "report_to_admin")
	private String reportToAdmin;

	@Column(name = "superuser")
	private String superuser;
	
	@Column(name = "user_type")
	private Long userType;
	
	@Column(name = "sim_serial_no")
	private String simSerialNo;
	
	@Column(name = "imei_no")
	private Long imeiNo;
	
	@Column(name = "wipse_status")
	private String wipseStatus;
	
	@Column(name = "pacs_username")
	private String pacsUsername;
	
	@Column(name = "pacs_password")
	private String pacsPassword;
	
	@Column(name = "pacs_designation")
	private String pacsDesignation;
	
	@Column(name = "login_status")
	private String loginStatus;
	
	@Column(name = "last_login_dept")
	private Long lastLoginDept;
	
	@Column(name = "current_counter_id")
	private Long currentCounterId;
	
	@Column(name = "current_lab_id")
	private Long currentLabId;
	
	@Column(name = "available_today")
	private String availableToday;

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Long employeeId) {
		this.employeeId = employeeId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getLastChgBy() {
		return lastChgBy;
	}

	public void setLastChgBy(Integer lastChgBy) {
		this.lastChgBy = lastChgBy;
	}

	public Date getLastChgDate() {
		return lastChgDate;
	}

	public void setLastChgDate(Date lastChgDate) {
		this.lastChgDate = lastChgDate;
	}

	public String getLastChgTime() {
		return lastChgTime;
	}

	public void setLastChgTime(String lastChgTime) {
		this.lastChgTime = lastChgTime;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public Long getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(Long hospitalId) {
		this.hospitalId = hospitalId;
	}

	public Date getLastSuccessfulLoginDate() {
		return lastSuccessfulLoginDate;
	}

	public void setLastSuccessfulLoginDate(Date lastSuccessfulLoginDate) {
		this.lastSuccessfulLoginDate = lastSuccessfulLoginDate;
	}

	public String getLastSuccessfulLoginTime() {
		return lastSuccessfulLoginTime;
	}

	public void setLastSuccessfulLoginTime(String lastSuccessfulLoginTime) {
		this.lastSuccessfulLoginTime = lastSuccessfulLoginTime;
	}

	public Long getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(Long loginCount) {
		this.loginCount = loginCount;
	}

	public String getReportToAdmin() {
		return reportToAdmin;
	}

	public void setReportToAdmin(String reportToAdmin) {
		this.reportToAdmin = reportToAdmin;
	}

	public String getSuperuser() {
		return superuser;
	}

	public void setSuperuser(String superuser) {
		this.superuser = superuser;
	}

	public Long getUserType() {
		return userType;
	}

	public void setUserType(Long userType) {
		this.userType = userType;
	}

	public String getSimSerialNo() {
		return simSerialNo;
	}

	public void setSimSerialNo(String simSerialNo) {
		this.simSerialNo = simSerialNo;
	}

	public Long getImeiNo() {
		return imeiNo;
	}

	public void setImeiNo(Long imeiNo) {
		this.imeiNo = imeiNo;
	}

	public String getWipseStatus() {
		return wipseStatus;
	}

	public void setWipseStatus(String wipseStatus) {
		this.wipseStatus = wipseStatus;
	}

	public String getPacsUsername() {
		return pacsUsername;
	}

	public void setPacsUsername(String pacsUsername) {
		this.pacsUsername = pacsUsername;
	}

	public String getPacsPassword() {
		return pacsPassword;
	}

	public void setPacsPassword(String pacsPassword) {
		this.pacsPassword = pacsPassword;
	}

	public String getPacsDesignation() {
		return pacsDesignation;
	}

	public void setPacsDesignation(String pacsDesignation) {
		this.pacsDesignation = pacsDesignation;
	}

	public String getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}

	public Long getLastLoginDept() {
		return lastLoginDept;
	}

	public void setLastLoginDept(Long lastLoginDept) {
		this.lastLoginDept = lastLoginDept;
	}

	public Long getCurrentCounterId() {
		return currentCounterId;
	}

	public void setCurrentCounterId(Long currentCounterId) {
		this.currentCounterId = currentCounterId;
	}

	public Long getCurrentLabId() {
		return currentLabId;
	}

	public void setCurrentLabId(Long currentLabId) {
		this.currentLabId = currentLabId;
	}

	public String getAvailableToday() {
		return availableToday;
	}

	public void setAvailableToday(String availableToday) {
		this.availableToday = availableToday;
	}
	
/*	@OneToOne(cascade = CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name = "district_id", referencedColumnName="id")
	private DistrictMaster district;
	

	@OneToOne(cascade = CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name = "hospital_id", referencedColumnName="gid")
	private HospitalMaster hospitalid;
	
	@ManyToOne(targetEntity=Role.class, fetch=FetchType.EAGER)
	@JoinColumn(name = "roleid",referencedColumnName="id", insertable=false, updatable=false)
	private Role roleid;*/


	  
	 
}
