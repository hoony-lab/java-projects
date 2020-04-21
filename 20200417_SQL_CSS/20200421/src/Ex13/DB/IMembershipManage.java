package Ex13.DB;

import java.util.List;

import Ex13.Member;

public interface IMembershipManage {
	//회원 가입 시 개인 정보를 DB에 저장
	public boolean MembershipProc(Member member);
	//ID와 PW로 개인 인증
	public int LoginProc(String id, String pw);
	
	public List<Member> getMember();
}
