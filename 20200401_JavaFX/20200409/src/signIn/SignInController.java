package signIn;

import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.TextField;

public class SignInController implements Initializable {
	@FXML CheckBox cb;
	@FXML TextField idTf, pwdTf;
	@FXML Button btn;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		btn.setOnAction(e -> handleBtnAction(e));
		
		idTf.textProperty().addListener((obs, oldT, newT) -> {
			checkFieldLength(idTf);
			checkEscapeText(idTf);
		});
	}

	private ICommonService comServ;
	comServ = new CommonService();
	
	private void checkEscapeText(TextField txt) {
		txt.setText(txt.getText().replaceAll("[^a-zA-Z0-9_]", ""));
	}
		/*
		   ==================== [�ֿ� ��ȣ] ====================
			^  ������ ����
			$  ������ ��
			abc  abc�� �ݵ�� ����
			[abc]  abc�߿� 1���� �ݵ�� ����
			[a-c]  a���� c���̿��� 1���� �ݵ�� ����
			[a-c]{5}  a���� c������ ���ڰ� �ݵ�� 5�� ����
			[a-c]{5, 10} a���� c������ ���ڰ� �ݵ�� 5~10�� ����
			[a-c]{5, }  a���� c������ ���ڰ� �ݵ�� 5�� �̻� ����
			[a-zA-Z]  ���ĺ� �� 1����
			[0-9]  ������ 1��
			[��-�R]  �ϼ��� �ѱ� 1����
			[��-��]  ���� 1��
			[��-��]  ���� 1��
			a?  a�� ���� ���� �ְ�, ���� ���� �ִ�(0 or 1)
			a{0, 1}  ��� �Ұ�, {}���� 0�� ���� �� ����
			Ư������
			\d  [0-9]�� ����
			\w  [a-zA-Z0-9_]�� ����
			\s  white space, ����
			.  �ƹ� ���ڳ� ����(any character)
			[0-9]+  ���� 1�� �̻�
			[0-9]*  ���� 0�� �̻�
			[0-9]?  ���� 0�� �Ǵ� 1��
			==================================================
		 */

	private void checkFieldLength(TextField txt) {
		if(txt.getText().length() > 10)
			txt.deleteNextChar();
	}

	private void handleBtnAction(ActionEvent e) {
		String id = idTf.getText();
		String pwd = pwdTf.getText();
		
		//pwd = encryptSHA512(pwd);
		
		if(!cb.isSelected())
			idTf.clear();
		pwdTf.clear();
	}

}
