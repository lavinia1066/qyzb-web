package com.qyzb.entiy;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Yuyue entity. @author MyEclipse Persistence Tools
 */
@Component
public class Yuyue implements java.io.Serializable {

	// Fields

	private Integer id;
	private String projectAddredd;
	private String projectRole;
	private String projectName;
	private String projectArea;
	private String projectCompleteDate;
	private String projectExplain;
	private String name;
	private String phoneNumber;

	// Constructors

	/** default constructor */
	public Yuyue() {
	}

	/** full constructor */
	public Yuyue(String projectAddredd, String projectRole, String projectName,
			String projectArea, String projectCompleteDate, String projectExplain,
			String name, String phoneNumber) {
		this.projectAddredd = projectAddredd;
		this.projectRole = projectRole;
		this.projectName = projectName;
		this.projectArea = projectArea;
		this.projectCompleteDate = projectCompleteDate;
		this.projectExplain = projectExplain;
		this.name = name;
		this.phoneNumber = phoneNumber;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectAddredd() {
		return this.projectAddredd;
	}

	public void setProjectAddredd(String projectAddredd) {
		this.projectAddredd = projectAddredd;
	}

	public String getProjectRole() {
		return this.projectRole;
	}

	public void setProjectRole(String projectRole) {
		this.projectRole = projectRole;
	}

	public String getProjectName() {
		return this.projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectArea() {
		return this.projectArea;
	}

	public void setProjectArea(String projectArea) {
		this.projectArea = projectArea;
	}

	public String getProjectCompleteDate() {
		return this.projectCompleteDate;
	}

	public void setProjectCompleteDate(String projectCompleteDate) {
		this.projectCompleteDate = projectCompleteDate;
	}

	public String getProjectExplain() {
		return this.projectExplain;
	}

	public void setProjectExplain(String projectExplain) {
		this.projectExplain = projectExplain;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}