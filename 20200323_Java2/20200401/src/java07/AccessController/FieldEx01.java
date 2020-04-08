package java07.AccessController;



public class FieldEx01 {
	private int privateN;
	int defaultN;
	protected int protectedN;
	public int publicN;
	
	
	public FieldEx01(int privateN, int defaultN, int protectedN, int publicN) {
		super();
		this.privateN = privateN;
		this.defaultN = defaultN;
		this.protectedN = protectedN;
		this.publicN = publicN;
	}
	
		
	
	public int getPrivateN() {
		return privateN;
	}
	public void setPrivateN(int privateN) {
		this.privateN = privateN;
	}
	public int getDefaultN() {
		return defaultN;
	}
	public void setDefaultN(int defaultN) {
		this.defaultN = defaultN;
	}
	public int getProtectedN() {
		return protectedN;
	}
	public void setProtectedN(int protectedN) {
		this.protectedN = protectedN;
	}
	public int getPublicN() {
		return publicN;
	}
	public void setPublicN(int publicN) {
		this.publicN = publicN;
	}

	
}
