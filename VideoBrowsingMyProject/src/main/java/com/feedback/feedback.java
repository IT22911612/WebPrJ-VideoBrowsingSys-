package com.feedback;

public class feedback {

	private String name;
	private String email;
	private String feedback;
	
	public feedback(String name, String email, String feedback) {
		this.name = name;
		this.email = email;
		this.feedback = feedback;

	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getFeedback() {
		return feedback;
	}
}