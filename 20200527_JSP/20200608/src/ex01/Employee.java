package ex01;

//Employee
public class Employee {

	// EmployeeID
	private Integer employeeid;

	// LastName
	private String lastname;

	// FirstName
	private String firstname;

	// BirthDate
	private String birthdate;

	// Photo
	private String photo;

	// Notes
	private String notes;

	public Integer getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(Integer employeeid) {
		this.employeeid = employeeid;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	// Employee ¸ðµ¨ º¹»ç
	public void CopyData(Employee param) {
		this.employeeid = param.getEmployeeid();
		this.lastname = param.getLastname();
		this.firstname = param.getFirstname();
		this.birthdate = param.getBirthdate();
		this.photo = param.getPhoto();
		this.notes = param.getNotes();
	}
}