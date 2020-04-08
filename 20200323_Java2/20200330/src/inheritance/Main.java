package inheritance;

public class Main {

	public static void main(String[] args) {
		Attack attack = new Attack() {

			@Override
			public String MeeleAttack() {
				// TODO Auto-generated method stub
				return "tbdtbd";
			}
		};
		System.out.println(attack.StandoffAttack());
		System.out.println(attack.MeeleAttack());





	}

}
