package ex01;

//Suppliers
public class Supplier {

	// SupplierID
	private Integer supplierid;

	// SupplierName
	private String suppliername;

	// ContactName
	private String contactname;

	// Address
	private String address;

	// City
	private String city;

	// PostalCode
	private String postalcode;

	// Country
	private String country;

	// Phone
	private String phone;

	public Integer getSupplierid() {
		return supplierid;
	}

	public void setSupplierid(Integer supplierid) {
		this.supplierid = supplierid;
	}

	public String getSuppliername() {
		return suppliername;
	}

	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}

	public String getContactname() {
		return contactname;
	}

	public void setContactname(String contactname) {
		this.contactname = contactname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalcode() {
		return postalcode;
	}

	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	// Supplier ¸ðµ¨ º¹»ç
	public void CopyData(Supplier param) {
		this.supplierid = param.getSupplierid();
		this.suppliername = param.getSuppliername();
		this.contactname = param.getContactname();
		this.address = param.getAddress();
		this.city = param.getCity();
		this.postalcode = param.getPostalcode();
		this.country = param.getCountry();
		this.phone = param.getPhone();
	}
}