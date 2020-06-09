package ex01;

//Products
public class Product {

	// ProductID
	private Integer productid;

	// ProductName
	private String productname;

	// SupplierID
	private Integer supplierid;

	// CategoryID
	private Integer categoryid;

	// Unit
	private String unit;

	// Price
	private float price;

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Integer getSupplierid() {
		return supplierid;
	}

	public void setSupplierid(Integer supplierid) {
		this.supplierid = supplierid;
	}

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	// Product ¸ðµ¨ º¹»ç
	public void CopyData(Product param) {
		this.productid = param.getProductid();
		this.productname = param.getProductname();
		this.supplierid = param.getSupplierid();
		this.categoryid = param.getCategoryid();
		this.unit = param.getUnit();
		this.price = param.getPrice();
	}
}