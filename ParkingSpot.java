public class ParkingSpot {
	
	private int parkingLotID;
	
	private String parkingSpotID;
	
	private boolean occupied;
	
	private int occupiedBy;
	
	private String spaceType;
	
	//some timer attribute will go here
	
	private int spotTimeLimit;
	
	private boolean overTime;
	
	public ParkingSpot(int lID, String pID, String sType, int tLimit){
		parkingLotID = lID;
		parkingSpotID = pID;
		occupied = false;
		occupiedBy = 0;
		spaceType = sType;
		//Some timer imitialization here
		spotTimeLimit = tLimit;
		overTime = false;
	}
	
	public int getParkingLotID(){
		return parkingLotID;
	}
	
	public String getParkingSpotID(){
		return parkingSpotID;
	}
	
	public boolean getOccupied(){
		return occupied;
	}
	
	public int getOccupiedBy(){
		return occupiedBy;
	}
	
	public String getSpaceType(){
		return spaceType;
	}
	
	//put a get time elapsed function here 
	
	public int getSpotTimeLimit(){
		return spotTimeLimit;
	}
	
	public boolean getOverTime(){
		return overTime;
	}
	
	public void setOccupied(boolean val){
		occupied = val;
	}
	
	public void setOccupiedBy(int uID){
		occupiedBy = uID;
	}
	
	public void setSpotTimeLimit(int timeMax){
		spotTimeLimit = timeMax;
	}
}