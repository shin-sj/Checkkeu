package model;

import java.io.Serializable;

public class Scrap implements Serializable {
	
	private String userId;
	private int policyId;
	private String name;
	private String category;
	private String startDate;
	private String endDate;
	
	public Scrap() {
	
	}
	
	public Scrap(String userId, int policyId) {
		this.userId = userId;
		this.policyId = policyId;
	}
	
	//스크랩 목록 보기 추가 
	public Scrap(String userId, int policyId, String name, String category) {
		this.userId = userId;
		this.policyId = policyId;
		this.name = name;
		this.category = category;
	}
	
	//스크랩 목록 보기 추가 (+ 날짜)
		public Scrap(String userId, int policyId, String name, String category, String startDate, String endDate) {
			this.userId = userId;
			this.policyId = policyId;
			this.name = name;
			this.category = category;
			this.startDate = startDate;
			this.endDate = endDate;
		}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public int getPolicyId() {
		return policyId;
	}
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	
	
}
