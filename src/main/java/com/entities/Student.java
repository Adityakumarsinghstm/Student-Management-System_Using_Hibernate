package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="add_students")
public class Student {
	
	@Id
	@Column(name="stu_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String fullName;
	
	private String dob;
	
	@Lob
	private String address;
	
	
	private String qualificatio;
	
	private String email;
	

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Student(String fullName, String dob, String address, String qualificatio, String email) {
		super();
		this.fullName = fullName;
		this.dob = dob;
		this.address = address;
		this.qualificatio = qualificatio;
		this.email = email;
	}



	public Student(int id, String fullName, String dob, String address, String qualificatio, String email) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.dob = dob;
		this.address = address;
		this.qualificatio = qualificatio;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getQualificatio() {
		return qualificatio;
	}

	public void setQualificatio(String qualificatio) {
		this.qualificatio = qualificatio;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	


}
