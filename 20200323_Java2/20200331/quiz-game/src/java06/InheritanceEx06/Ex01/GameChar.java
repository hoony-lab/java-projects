package java06.InheritanceEx06.Ex01;
/*
 * 게임 캐릭터의 능력치 종류
 */
public class GameChar {
	int [] facultyData;		//능력 수치 데이터
	String [] facultyName;	//능력 이름 데이터
	GameChar(int n){
		facultyData = new int[n];
		facultyName = new String[n];
	}
	public int[] getFacultyData() {
		return facultyData;
	}
	public String[] getFacultyName() {
		return facultyName;
	}
	public void setFaculty(String str, int data, int idx) {
		if(this.facultyData.length>idx){
			this.facultyData[idx] = data;
			this.facultyName[idx] = str;
		}
	}
}
