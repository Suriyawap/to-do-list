package dtoclass;

public class userdto {

	
	private int userId;
	private String username;
	private String useremail;
	private long usercontact;
	private String userpassword;
	private byte[] userimage;
	
	
	public userdto(int userId, String username, String userEmail, long userContact, String userpassword,
			byte[] userImage)
	{
		this.userId = userId;
		this.username = username;
		this.useremail = userEmail;
		this.usercontact = userContact;
		this.userpassword = userpassword;
		this.userimage = userImage;
	}
	
	
	
	
	
	
	public int getUserId() {
		return userId;
	}
	public String getUsername() {
		return username;
	}
	public String getUserEmail() {
		return useremail;
	}
	public long getUserContact() {
		return usercontact;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public byte[] getUserImage() {
		return userimage;
	}
	

}
