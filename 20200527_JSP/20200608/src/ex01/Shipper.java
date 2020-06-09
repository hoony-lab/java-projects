package ex01;

//Shippers
public class Shipper {

	// ShipperID
	private Integer shipperid;

	// ShipperName
	private String shippername;

	// Phone
	private String phone;

	public Integer getShipperid() {
		return shipperid;
	}

	public void setShipperid(Integer shipperid) {
		this.shipperid = shipperid;
	}

	public String getShippername() {
		return shippername;
	}

	public void setShippername(String shippername) {
		this.shippername = shippername;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	// Shipper ¸ðµ¨ º¹»ç
	public void CopyData(Shipper param) {
		this.shipperid = param.getShipperid();
		this.shippername = param.getShippername();
		this.phone = param.getPhone();
	}
}