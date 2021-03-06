public class User {

	private int CCUID;
	
	private String userName;
	
	private String stickerType;
	
	private String firstName;
	
	private String lastName;
	
	private String password;
	
	private int graduationYear;
	
	private int stickerID;
	
	/* default constructor*/
	public User(){
		CCUID = 0;
		userName = null;
		stickerType = null;
		firstName = null;
		lastName = null;
		password = null;
		graduationYear = 0;
		stickerID = 0;
	}
	
	public User(int ID, String uName, String sType, String fName, String lName, String aPassword, int gYear, int sID){
		CCUID = ID;
		userName = uName;
		stickerType = sType;
		firstName = fName;
		lastName = lName;
		graduationYear = gYear;
		stickerID = sID;
		password = aPassword;
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
