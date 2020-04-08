package elevator.app;

public class Passenger {
	private int destination;
	private int weight;
	private int feeling;



	public Passenger(int destination, int weight, int feeling) {
		super();
		this.destination = destination;
		this.weight = weight;
		this.feeling = feeling;
	}
	
	Passenger(int destination){
		this(destination, 60, 10);
	}
	Passenger(){
		this(5, 60, 10);
	}
	
	

	public int getDestination() {
		return destination;
	}
	public void setDestination(int destination) {
		this.destination = destination;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getFeeling() {
		return feeling;
	}
	public void setFeeling(int feeling) {
		this.feeling = feeling;
	}





}
