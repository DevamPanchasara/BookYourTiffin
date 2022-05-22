package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complain_table")
public class ComplainVO 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="complain_subject")
	private String complainSubject;
	
	@Column(name="complain_description")
	private String complainDescription;
	
	@Column(name="complain_datatime")
	private String complainDateTime;
	
	@Column(name="complain_status")
	private String complainStatus="Pending";
	
	@Column(name="complain_replay")
	private String complainReplay;
	
	@Column(name="replay_datatime")
	private String replayDateTime;
	
	@Column(name="status")
	private boolean status=true;
	
	@Column(name="file_name")
	private String fileName;
	
	@Column(name="file_path")
	private String filePath;
	
	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplainSubject() {
		return complainSubject;
	}

	public void setComplainSubject(String complainSubject) {
		this.complainSubject = complainSubject;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	public String getComplainDateTime() {
		return complainDateTime;
	}

	public void setComplainDateTime(String complainDateTime) {
		this.complainDateTime = complainDateTime;
	}

	public String getComplainStatus() {
		return complainStatus;
	}

	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}

	public String getComplainReplay() {
		return complainReplay;
	}

	public void setComplainReplay(String complainReplay) {
		this.complainReplay = complainReplay;
	}

	public String getReplayDateTime() {
		return replayDateTime;
	}

	public void setReplayDateTime(String replayDateTime) {
		this.replayDateTime = replayDateTime;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

}
