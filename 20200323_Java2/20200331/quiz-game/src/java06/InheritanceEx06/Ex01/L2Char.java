package java06.InheritanceEx06.Ex01;
/*
 * �ɸ��� �̸�
 * ����
 * �ɷ�ġ
   - ����
   - ���ݷ�
   - ����
   - ������
 */
public class L2Char extends GameChar{
	L2Char() {
		super(4);
		String [] ability ={"����", "���ݷ�", "����", "������"};
		for(int i=0;i<ability.length;i++)
			setFaculty(ability[i], 1, i);
	}
	String race;
	String name;
	public void showAbility(){
		String [] strData;
		int [] intData;
		
		strData = super.getFacultyName();
		intData = super.getFacultyData();
		
		for(int i=0;i<strData.length;i++){
			System.out.println(strData[i] + " : " + intData[i]);
		}
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
