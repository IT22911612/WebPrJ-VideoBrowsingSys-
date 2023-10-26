package com.writer;

public class writer {
	
	private int writerid;
	private String name;
	private String email;
	private String phone;
	private String nic;
	private String linkdin;
	private String youtube;
	private String website;
	public writer(int writerid, String name, String email, String phone, String nic, String linkdin, String youtube,
			String website) {
		super();
		this.writerid = writerid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.nic = nic;
		this.linkdin = linkdin;
		this.youtube = youtube;
		this.website = website;
	}
	public int getWriterid() {
		return writerid;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getNic() {
		return nic;
	}
	public String getLinkdin() {
		return linkdin;
	}
	public String getYoutube() {
		return youtube;
	}
	public String getWebsite() {
		return website;
	}


	
	
	
	
	
	

}
