package app.security;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Hash {
	
	public String gerarHash(String valor) {
		MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("SHA-1");
			digest.reset();
			digest.update(valor.getBytes("utf8"));
			String sha1 = String.format("%040x", new BigInteger(1, digest.digest()));
			return sha1;
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}		
	}
}
