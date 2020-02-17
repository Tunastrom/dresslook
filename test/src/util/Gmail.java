package util;

import java.io.IOException;

import javax.mail.PasswordAuthentication;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Authenticator;
import org.apache.catalina.connector.Request;

public class Gmail implements Authenticator {

	@Override
	public boolean authenticate(Request arg0, HttpServletResponse arg1) throws IOException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void login(String arg0, String arg1, Request arg2) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void logout(Request arg0) {
		// TODO Auto-generated method stub

	}
	
	
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("Id", "password");
	}
	
	
	

}
