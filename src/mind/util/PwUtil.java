package mind.util;

import java.security.MessageDigest;

public class PwUtil {
	
	// SHA-256 암호화 구현
	
	public String Encryption(String password) {
		
		MessageDigest digest = null; 
		byte[] hash = null;
		StringBuffer hexString = new StringBuffer();
		
		
		try {	
			digest = MessageDigest.getInstance("SHA-256");
			hash = digest.digest(password.getBytes("UTF-8"));
			
            for (int i = 0; i < hash.length; i++) {
                String hex = Integer.toHexString(0xff & hash[i]);
                if(hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(hexString);
		
		return hexString.toString();
	}
	
	// Properties에 있는 값과 SHA-256 암호화시킨 입력값을 비교해서 boolean값 반환
	
	public boolean PWCheck(String inputPwd,String pwd) {
		
		if (Encryption(inputPwd).toUpperCase().equals(pwd.toUpperCase())) {
			return true;
		}
		return false;
	}

	
}
