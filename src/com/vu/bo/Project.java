package com.vu.bo;

public class Project {
	private String projectName;
	private int projectId;
	private String proProg;
	private String pEndDate;
	private String taskName;
	private String descp;
	private String p_status;
	private String name;
	private int taskCount;
	private int proCount;
	private float taskPercent;
	private float proPercent;
	private String uTaskProg;
	private String u_currentDate;
	
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getTaskName() {
		return taskName;
	}
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescp() {
		return descp;
	}
	public void setDescp(String descp) {
		this.descp = descp;
	}
	public int getTaskCount() {
		return taskCount;
	}
	public void setTaskCount(int taskCount) {
		this.taskCount = taskCount;
	}
	public int getProCount() {
		return proCount;
	}
	public void setProCount(int proCount) {
		this.proCount = proCount;
	}
	
	public String getU_currentDate() {
		return u_currentDate;
	}
	public void setU_currentDate(String u_currentDate) {
		this.u_currentDate = u_currentDate;
	}
	public String getProProg() {
		return proProg;
	}
	public void setProProg(String proProg) {
		this.proProg = proProg;
	}
	public String getuTaskProg() {
		return uTaskProg;
	}
	public void setuTaskProg(String uTaskProg) {
		this.uTaskProg = uTaskProg;
	}
	public String getpEndDate() {
		return pEndDate;
	}
	public void setpEndDate(String pEndDate) {
		this.pEndDate = pEndDate;
	}
	public float getTaskPercent() {
		return taskPercent;
	}
	public void setTaskPercent(float taskPercent) {
		this.taskPercent = taskPercent;
	}
	public float getProPercent() {
		return proPercent;
	}
	public void setProPercent(float proPercent) {
		this.proPercent = proPercent;
	}
	

}
