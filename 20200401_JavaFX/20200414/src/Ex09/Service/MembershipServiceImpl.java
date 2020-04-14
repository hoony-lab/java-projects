package Ex09.Service;

public class MembershipServiceImpl implements MembershipService {
	@Override
	public boolean comparePW(String pw, String pwOk) {
		if(!pw.contentEquals(pwOk))
			return true;
		return false;
	}
}
