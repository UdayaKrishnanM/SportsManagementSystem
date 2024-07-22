package com.sportsmanagement.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
 

@Getter
@Setter
@Entity
public class Admin {
	@Id
	private Long id;
	private String username;
	private String password;
	
	@Override
	public String toString() {
		return "Adminlogin [id=" + id + ", username=" + username + ", password=" + password + "]";
	}

	public Admin(Long id, String username, String password, String roles) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public Admin() {
		super();
	}
	 
}
