public class User {

	private int CCUID;
	
	private String userName;
	
	private String stickerType;
	
	private String firstName;
	
	private String lastName;
	
	private int graduationYear;
	
	private int stickerID;
	
	public User(int ID, String uName, String sType, String fName, String lName, int gYear, int sID){
		CCUID = ID;
		userName = uName;
		stickerType = sType;
		firstName = fName;
		lastName = lName;
		graduationYear = gYear;
		stickerID = sID;
	}
	
	public int getCCUID(){
		return CCUID;
	}
	
	public String getUserName(){
		return userName;
	}
	
	public String getStickerType(){
		return stickerType;
	}
	
	public String getName(){
		String fullName = firstName + " " + lastName;
		return fullName;
	}
	
	public int getGraduationYear(){
		return graduationYear;
	}
	
	public int getStickerID(){
		return stickerID;
	}
	
	public void setStickerID(int newID){
		stickerID = newID;
	}
	
	public void setgraduationYear(int newYear){
		graduationYear = newYear;
	}
	
	public void setStickerType(String newType){
		stickerType = newType;
	}
}