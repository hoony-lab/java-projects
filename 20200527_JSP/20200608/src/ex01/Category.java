package ex01;

//Categories
public class Category {

	// CategoryID
	private Integer categoryid;

	// CategoryName
	private String categoryname;

	// Description
	private String description;

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	// Category ¸ðµ¨ º¹»ç
	public void CopyData(Category param) {
		this.categoryid = param.getCategoryid();
		this.categoryname = param.getCategoryname();
		this.description = param.getDescription();
	}
}