package Ex13.DB;

import java.util.List;

import Ex13.Member;

public interface IMembershipManage {
	//ȸ�� ���� �� ���� ������ DB�� ����
	public boolean MembershipProc(Member member);
	//ID�� PW�� ���� ����
	public int LoginProc(String id, String pw);
	
	public List<Member> getMember();
}
