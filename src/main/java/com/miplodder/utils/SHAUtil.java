package com.miplodder.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHAUtil {
	
	public static String getSHA(String input) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte[] messageDigest = md.digest(input.getBytes());
			
			BigInteger no = new BigInteger(1, messageDigest);
			String hashtext = no.toString(16);
			
			while(hashtext.length() < 32) {
				hashtext = "0" + hashtext;
			}
			
			return hashtext;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

}
