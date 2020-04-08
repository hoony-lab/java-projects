package com.jin.mail;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA {
	public final String encryptSHA512(String data) {
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
}
