package com.vu.bo;

public class Task extends User {
	
	private int taskId;
	private String taskName;
	private String projectName;
	private String status;
	private String tEndDate;
	private String taskPercent;
	
	
	
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public String getTaskName() {
		return taskName;
	}
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTaskPercent() {
		return taskPercent;
	}
	public void setTaskPercent(String taskPercent) {
		this.taskPercent = taskPercent;
	}
	public String gettEndDate() {
		return tEndDate;
	}
	public void settEndDate(String tEndDate) {
		this.tEndDate = tEndDate;
	}
	

}
