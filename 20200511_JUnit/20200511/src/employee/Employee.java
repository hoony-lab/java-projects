package employee;

public class Employee {
	private String name;
	private int age;
	private int monthlySalary;
	
	public Employee(String name, int age, int monthlySalary) {
		super();
		this.name = name;
		this.age = age;
		this.monthlySalary = monthlySalary;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getMonthlySalary() {
		return monthlySalary;
	}
	public void setMonthlySalary(int monthlySalary) {
		this.monthlySalary = monthlySalary;
	}

	
	public int calculateYearlySalary() {
		return monthlySalary * 12;
	}
	
	public int calculateAppraisal(double salary) {
		if (salary < 10000)			return 500;
		else 						return 1000;
	}
}
