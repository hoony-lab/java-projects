package ex01;

//OrderDetails
public class Orderdetail {

	// OrderDetailID
	private Integer orderidorderdetailid;

	// ProductID
	private Integer productid;

	// Quantity
	private Integer quantity;

	// OrderID
	private Integer orderid;

	public Integer getOrderidorderdetailid() {
		return orderidorderdetailid;
	}

	public void setOrderidorderdetailid(Integer orderidorderdetailid) {
		this.orderidorderdetailid = orderidorderdetailid;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	// Orderdetail ¸ðµ¨ º¹»ç
	public void CopyData(Orderdetail param) {
		this.orderidorderdetailid = param.getOrderidorderdetailid();
		this.productid = param.getProductid();
		this.quantity = param.getQuantity();
		this.orderid = param.getOrderid();
	}
}