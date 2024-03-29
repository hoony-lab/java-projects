package elevator.app;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class Elevator extends Keyword {	

	private int isCheckingPassenger;
	private int isStopped;
	private int way;	
	private List<Passenger> passenger;
	private int currentFloor;
	private Set<Integer> floors;// = new ArrayList<Integer>();



	public Elevator(int isCheckingPassenger, int isStopped, int way, List<Passenger> passenger, int currentFloor, Set<Integer> floors) {
		super();
		this.isCheckingPassenger = NO;
		this.isStopped = YES;
		this.way = way;
		this.passenger = new ArrayList<>();
		this.currentFloor = currentFloor;
		this.floors = new TreeSet<Integer>();
	}
	public Elevator() {
		this(NO, YES, 0, null, 1, null);
	}


	public int getIsCheckingPassenger() {
		return isCheckingPassenger;
	}
	public void setIsCheckingPassenger(int isCheckingPassenger) {
		this.isCheckingPassenger = isCheckingPassenger;
	}
	public int getIsStopped() {
		return isStopped;
	}
	public void setIsStopped(int isStopped) {
		this.isStopped = isStopped;
	}
	public int getWay() {
		return way;
	}
	public void setWay(int way) {
		this.way = way;
	}
	public List<Passenger> getPassenger() {
		return passenger;
	}
	public void setPassenger(List<Passenger> passenger) {
		this.passenger = passenger;
	}
	public int getCurrentFloor() {
		return currentFloor;
	}
	public void setCurrentFloor(int currentFloor) {
		this.currentFloor = currentFloor;
	}
	public Set<Integer> getFloors() {
		return floors;
	}
	public void setFloors(Set<Integer> floors) {
		this.floors = floors;
	}



	public boolean isOnDestination() {
		if(floors.contains(currentFloor))
			return true;
		return false;		
	}
	public void checkInPassenger(Floor floor) {
		if(floor.getPassenger() == null) return;
		
		int count = 0 ;
		for(Passenger p : floor.getPassenger()) {
			this.passenger.add(p);
			this.floors.add(p.getDestination());
			count++;
		}
		System.out.print(count + "�� Ÿ�� ��  ");
	}

	public Passenger findPassengerByDestination(int destination) {
		for(Passenger p : this.passenger) 
			if(p.getDestination() == destination)
				return p;
		
		return null;
	}

	public void checkOutPassenger(int floorNum) {
		int count = 0;
		while(findPassengerByDestination(floorNum) != null) {
			this.passenger.remove(findPassengerByDestination(floorNum));
			count ++;
		}
		this.floors.remove(floorNum);
		System.out.print(count + "�� ������ ��  ");
	}
	
	
	public void addFloors(int floor) {
		this.floors.add(floor);
	}

	// find distance from hit floor
	public int getDistanceCurrentFloorFromHitFloor(Floor[] floor) {
		int distance = -1;

		if(way == DOWN) {
			for(int f = currentFloor ; f > 0 ; --f) {
				if((floor[f].getWay() & way) == DOWN) {
					distance = currentFloor - f;
					break;
				}
			}
		}
		else if(way == UP) {
			for(int f = currentFloor ; f <= MAXFLOOR ; ++f) {
				if((floor[f].getWay() & way) == UP) {
					distance = f - currentFloor;
					break;
				}
			}
		}
		return distance;
	}

	// move UP DOWN to destination of elevator
	public void moveElevator() {
		if(isStopped == YES) return;

		if(getIsCheckingPassenger() == YES)
			setIsCheckingPassenger(NO);

		else {
			if(way == DOWN) 
				currentFloor -= 1;
			else if(way == UP)
				currentFloor += 1;
		}

	}


	public void openElevator(Floor[] floor) {
		String ret = "";

		if(isOnDestination()) {
			
			checkOutPassenger(currentFloor);
			
			checkInPassenger(floor[currentFloor]);
			
			if(this.passenger.size() == 1 && floors.isEmpty())
				way = floor[currentFloor].getWay();
			floor[currentFloor].setWay(WAIT);
			
			
			if(currentFloor == MAXFLOOR) 
				way = DOWN;
			else if(currentFloor == 1)
				way = UP;
			
			if(floors.isEmpty()) {
				setIsStopped(YES);
				way = WAIT;
			}

			ret += " << ���� ������ ���� >> ";
			ret += "�� [ " + getPassenger().size() + " ] �� ž�� ��";
			System.out.println(ret);
			
			//if(getWay() != WAIT && getIsStopped() == YES)
			setIsCheckingPassenger(YES);
			
			return ;
		}
		
		
		
		else if(way != WAIT && floor[currentFloor].getWay() == way) {
			
			checkOutPassenger(currentFloor);
			
			checkInPassenger(floor[currentFloor]);
			
			if(this.passenger.size() == 1 && floors.isEmpty())
				way = floor[currentFloor].getWay();
			floor[currentFloor].setWay(WAIT);
			
			if(currentFloor == MAXFLOOR) 
				way = DOWN;
			else if(currentFloor == 1)
				way = UP;
			
			if(floors.isEmpty()) {
				setIsStopped(YES);
				way = WAIT;
			}

			ret += " << ���� ������ ���� >> ";
			ret += "�� [ " + getPassenger().size() + " ] �� ž�� ��";
			System.out.println(ret);
			
			if(getWay() != WAIT && getIsStopped() == YES)
				setIsCheckingPassenger(YES);
			
			return ;
		}
		System.out.println("�������");
	}



	public int getHighestHitFloor() {
		int highestFloor = -1;
		for(int floor : floors) 
			highestFloor = floor;
		return highestFloor;	
	}

	public int getLowestHitFloor() {
		int lowestFloor = MAXFLOOR - 1;
		for(int floor : floors) {
			lowestFloor = floor;
			break;
		}
		return lowestFloor;
	}










	@Override
	public String toString() {
		String ret = "";
		ret += LINE;
		for(int f = MAXFLOOR ; f > 0 ; --f) {
			ret += "|\t  \t|\n";
			if(currentFloor == f)
				ret += "|\t" + f + "\t|\n";
		}
		ret += LINE;
		ret += "hitFloors : ";
		for(int n : floors)
			ret += n + " ";
		ret += "\n";
		ret += "passengers : ";
		for(Passenger p : passenger)
			ret += p.getDestination() + " ";
		ret += "\n";
		ret += "Way : ";
		if(way == UP)
			ret += "UP";
		else if(way == DOWN)
			ret += "DOWN";
		else
			ret += "WAIT";
		ret += "\n";
		ret += currentFloor + "��\n";
		

		return ret;
	}



}
