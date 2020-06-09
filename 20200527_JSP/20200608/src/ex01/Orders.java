package ex01;

//Orders
public class Orders {

	// OrderID
	private Integer orderid;

	// CustomerID
	private Integer customerid;

	// EmployeeID
	private Integer employeeid;

	// OrderDate
	private String orderdate;

	// ShipperID
	private Integer shipperid;

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Integer getCustomerid() {
		return customerid;
	}

	public void setCustomerid(Integer customerid) {
		this.customerid = customerid;
	}

	public Integer getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(Integer employeeid) {
		this.employeeid = employeeid;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public Integer getShipperid() {
		return shipperid;
	}

	public void setShipperid(Integer shipperid) {
		this.shipperid = shipperid;
	}

	// Order ¸ðµ¨ º¹»ç
	public void CopyData(Orders param) {
		this.orderid = param.getOrderid();
		this.customerid = param.getCustomerid();
		this.employeeid = param.getEmployeeid();
		this.orderdate = param.getOrderdate();
		this.shipperid = param.getShipperid();
	}
}