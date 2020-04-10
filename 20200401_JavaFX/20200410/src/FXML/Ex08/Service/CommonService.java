package FXML.Ex08.Service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class CommonService implements ICommonService{
	@Override
	public String encryptSHA512(String data) {
		 try {
            MessageDigest sha = MessageDigest.getInstance("SHA-512");
            sha.update(data.getBytes());
            StringBuffer sb = new StringBuffer();
            for (byte b : sha.digest()){ 
                sb.append(Integer.toHexString(0xff & b));
            }
            return  sb.toString();
        } catch (NoSuchAlgorithmException e) {
        	e.printStackTrace();
            return null;
        }
	}

	@Override
	public void MsgBox(String contents) {
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setContentText(contents);
		alert.show();		
	}

}
