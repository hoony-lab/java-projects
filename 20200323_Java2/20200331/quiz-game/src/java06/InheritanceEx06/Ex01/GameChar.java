package java06.InheritanceEx06.Ex01;
/*
 * ���� ĳ������ �ɷ�ġ ����
 */
public class GameChar {
	int [] facultyData;		//�ɷ� ��ġ ������
	String [] facultyName;	//�ɷ� �̸� ������
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
