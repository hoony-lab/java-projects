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
		   ==================== [ÁÖ¿ä ±âÈ£] ====================
			^  ¹®ÀåÀÇ ½ÃÀÛ
			$  ¹®ÀåÀÇ ³¡
			abc  abc°¡ ¹Ýµå½Ã ³ª¿È
			[abc]  abcÁß¿¡ 1°³°¡ ¹Ýµå½Ã ³ª¿È
			[a-c]  aºÎÅÍ c»çÀÌ¿¡¼­ 1°³°¡ ¹Ýµå½Ã ³ª¿È
			[a-c]{5}  aºÎÅÍ c»çÀÌÀÇ ±ÛÀÚ°¡ ¹Ýµå½Ã 5°³ ³ª¿È
			[a-c]{5, 10} aºÎÅÍ c»çÀÌÀÇ ±ÛÀÚ°¡ ¹Ýµå½Ã 5~10°³ ³ª¿È
			[a-c]{5, }  aºÎÅÍ c»çÀÌÀÇ ±ÛÀÚ°¡ ¹Ýµå½Ã 5°³ ÀÌ»ó ³ª¿È
			[a-zA-Z]  ¾ËÆÄºª Áß 1±ÛÀÚ
			[0-9]  ¼ýÀÚÁß 1°³
			[°¡-ÆR]  ¿Ï¼ºµÈ ÇÑ±Û 1±ÛÀÚ
			[¤¡-¤¾]  ÀÚÀ½ 1°³
			[¤¿-¤Ó]  ¸ðÀ½ 1°³
			a?  a°¡ ÀÖÀ» ¼öµµ ÀÖ°í, ¾øÀ» ¼öµµ ÀÖ´Ù(0 or 1)
			a{0, 1}  »ç¿ë ºÒ°¡, {}¿¡´Â 0À» ÀûÀ» ¼ö ¾ø´Ù
			Æ¯¼ö¹®ÀÚ
			\d  [0-9]¿Í µ¿ÀÏ
			\w  [a-zA-Z0-9_]¿Í µ¿ÀÏ
			\s  white space, ¶ç¾î¾²±â
			.  ¾Æ¹« ±ÛÀÚ³ª °¡´É(any character)
			[0-9]+  ¼ýÀÚ 1°³ ÀÌ»ó
			[0-9]*  ¼ýÀÚ 0°³ ÀÌ»ó
			[0-9]?  ¼ýÀÚ 0°³ ¶Ç´Â 1°³
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
