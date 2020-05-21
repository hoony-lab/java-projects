package employee;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

class EmployeeTest extends TestCase{

	private Employee emp;
	private String name;
	private int age;
	private int monthlySalary;
	
	@BeforeEach
	protected void setUp() throws Exception {
		name = "jin";
		age = 25;
		monthlySalary = 8000;
		emp = new Employee(name, age, monthlySalary);
	}

	@Test
	public void testEmployeeName(){
		assertEquals(emp.getName(), name);
		System.out.println("testEmployeeName Success !");
	}
	
	@Test
	public void testEmployeeAge(){
		assertEquals(emp.getAge(), age);
		System.out.println("testEmployeeAge Success !");
	}
	
	@Test
	public void testEmployeeMontlySalary(){
		assertEquals(emp.getMonthlySalary(), monthlySalary);
		System.out.println("testEmployeeMontlySalary Success !");
	}
	
	@Test
	public void testCalculateYearlySalary() {
		assertEquals(emp.calculateYearlySalary(), 8000 * 12);
		System.out.println("testCalculateYearlySalary Success !");
	}
	
	@Test
	public void testCalculateAppraisal() {
		assertEquals(emp.calculateAppraisal(8000), 500);
		System.out.println("testCalculateAppraisal Success !");
	}
}
