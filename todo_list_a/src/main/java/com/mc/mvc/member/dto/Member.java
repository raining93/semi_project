package com.mc.mvc.member.dto;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Member {
	
	private String userId;
	private String password;
	private String email;
	private String grade;
	private String tell;
	private Boolean isLeave;
	private LocalDateTime regDate;
	private LocalDateTime rentableDate;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public Boolean getIsLeave() {
		return isLeave;
	}
	public void setIsLeave(Boolean isLeave) {
		this.isLeave = isLeave;
	}
	public LocalDateTime getRegDate() {
		return regDate;
	}
	public void setRegDate(LocalDateTime regDate) {
		this.regDate = regDate;
	}
	public LocalDateTime getRentableDate() {
		return rentableDate;
	}
	public void setRentableDate(LocalDateTime rentableDate) {
		this.rentableDate = rentableDate;
	}

	
}
