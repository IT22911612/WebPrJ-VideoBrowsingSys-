package com.admin;

public class Advertiser {
	
	
	private String companyName;
	private String contactPerson;
	private String email;
	private String phone;
	private String messege;
	
	public Advertiser(String companyName, String contactPerson, String email, String phone, String messege) {
		this.companyName = companyName;
		this.contactPerson = contactPerson;
		this.email = email;
		this.phone = phone;
		this.messege = messege;
		
	}

	public String getCompanyName() {
		return companyName;
	}

	public String getContactPerson() {
		return contactPerson;
	}


	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}


	public String getMessege() {
		return messege;
	}

}
	